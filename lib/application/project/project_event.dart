part of 'project_bloc.dart';

@freezed
abstract class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.showAllStarted() = _ShowAllStarted;
  const factory ProjectEvent.projectsReceived( Either<ProjectFailure, KtList<Project>> failureOrProjects, ) = _ProjectsReceived;
}
