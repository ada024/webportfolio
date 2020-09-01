import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/domain/project/i_project_repository.dart';
import 'package:webportfolio/domain/project/tag.dart';

part 'project_bloc.freezed.dart';
part 'project_event.dart';
part 'project_state.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc(this._projectRepository) : super(const ProjectState.initial());

  final IProjectRepository _projectRepository;

  @override
  Stream<ProjectState> mapEventToState(
    ProjectEvent event,
  ) async* {
    yield const ProjectState.loading();
    yield* event.map(fetch: (e) async* {
      final projectOption = await _projectRepository.getProjectData();
      yield projectOption.fold(
        (e) => const ProjectState.error(),
        (project) {
          final List<String> tags =
              project.tags.map((Tag tag) => tag.name).toList();
          return ProjectState.loaded(project, tags);
        },
      );
    });
  }
}
