part of 'project_bloc.dart';

@freezed
abstract class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.fetch() = _Fetch;
}
