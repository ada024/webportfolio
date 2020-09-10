part of 'project_bloc.dart';

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = _Initial;
  const factory ProjectState.loading() = _Loading;
  const factory ProjectState.loaded(KtList<Project> project) = _Loaded;
  const factory ProjectState.error(ProjectFailure projectFailure) = _Error;
}