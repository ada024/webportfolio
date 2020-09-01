import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_failure.freezed.dart';

@freezed
abstract class ProjectFailure with _$ProjectFailure {
  const factory ProjectFailure.serverError() = ServerError;
}
