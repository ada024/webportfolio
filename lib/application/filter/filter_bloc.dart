import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webportfolio/application/project/project_bloc.dart';
import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/domain/project/tag.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterProjectState> {
  FilterBloc({@required this.projectBloc})
      : super(projectBloc.state.map(
          initial: (_) => const FilterProjectState.loading(),
          loading: (_) => const FilterProjectState.loading(),
          error: (_) => const FilterProjectState.error(),
          loaded: (s) => FilterProjectState.loaded(s.project, ''),
        )) {
    _projectSubscription = projectBloc.listen((projectState) {
      projectState.maybeMap(
        loaded: (projectState) {
          add(FilterEvent.update(projectState.project));
        },
        orElse: () {
          add(const FilterEvent.errorFromProject());
        },
      );
    });
  }

  final ProjectBloc projectBloc;
  StreamSubscription _projectSubscription;

  @override
  Stream<FilterProjectState> mapEventToState(
    FilterEvent event,
  ) async* {
    yield* event.map(
      update: (_) async* {
        yield* _mapUpdateFilterToState();
      },
      filterByTag: (e) async* {
        yield* _mapTagFilterToState(e);
      },
      clearFilters: (_) async* {
        yield* projectBloc.state.maybeMap(loaded: (s) async* {
          yield FilterProjectState.loaded(s.project, '');
        }, orElse: () async* {
          yield const FilterProjectState.error();
        });
      },
      errorFromProject: (_) async* {
        yield const FilterProjectState.error();
      },
    );
  }

  Stream<FilterProjectState> _mapUpdateFilterToState() async* {
    yield* projectBloc.state.maybeMap(
      loaded: (s) async* {
        yield FilterProjectState.loaded(s.project, 'tagFilter');
      },
      orElse: () async* {
        yield const FilterProjectState.error();
      },
    );
  }

  Stream<FilterProjectState> _mapTagFilterToState(_FilterByTag event) async* {
    yield* projectBloc.state.maybeMap(
      loaded: (projectState) async* {
        yield* state.maybeMap(
          loaded: (s) async* {
            final currentTag = s.tagFilter;
            if (currentTag == event.tag) {
              yield* _mapUpdateFilterToState();
              return;
            }
            try {
              final filteredProject =
                  _mapTagFilterToFilteredProject(projectState.project, event.tag);
              yield FilterProjectState.loaded(filteredProject, event.tag);
            } catch (_) {
              yield const FilterProjectState.error();
            }
          },
          orElse: () async* {
            yield const FilterProjectState.error();
          },
        );
      },
      orElse: () async* {
        yield const FilterProjectState.error();
      },
    );
  }

  Project _mapTagFilterToFilteredProject(Project project, String tagFilter) {
    final Tag filteredTag = project.tags.firstWhere((tag) {
      return tag.name == tagFilter;
    });
    return project.copyWith(pages: filteredTag.pages);
  }

  @override
  Future<void> close() {
    _projectSubscription.cancel();
    return super.close();
  }
}
