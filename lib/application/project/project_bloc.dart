import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:webportfolio/domain/project/i_project_repository.dart';
import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/domain/project/project_failure.dart';

part 'project_bloc.freezed.dart';
part 'project_event.dart';
part 'project_state.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc(this._projectRepository) : super(const ProjectState.initial());

  final IProjectRepository _projectRepository;
  StreamSubscription<Either<ProjectFailure, KtList<Project>>> _projSub;

  @override
  Stream<ProjectState> mapEventToState(ProjectEvent event,) async* {
    yield* event.map(

      fetch: (e)async* {
      /*
      final projectOption = await _projectRepository.getProjects();
      yield projectOption.fold(
            (e) => const ProjectState.error(),
            (project) {
          final List<String> tags = project.tags.map((Tag tag) => tag.name).toList();
          return ProjectState.loaded(project, tags);
        },
      );
      */
      },


      showAllStarted: (e) async* {
        yield const ProjectState.loading();
        await _projSub?.cancel();
        _projSub  =  _projectRepository.watchAllProjects().listen(
        (failureOrProject) {
          add(ProjectEvent.projectsReceived(failureOrProject));
        },);
      },
      projectsReceived: (e) async* {
        yield e.failureOrNotes.fold(
              (f) => ProjectState.error(f),
              (project) => ProjectState.loaded(project),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    _projSub?.cancel();
    return super.close();
  }
}
