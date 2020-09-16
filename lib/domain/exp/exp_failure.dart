import 'package:freezed_annotation/freezed_annotation.dart';

part 'exp_failure.freezed.dart';

@freezed
abstract class ExpFailure with _$ExpFailure {
  const factory ExpFailure.serverError() = _ServerError;

  const factory ExpFailure.unexpected() = _ExpFailure;

  const factory ExpFailure.insufficientPermission() = _InsufficientPermission;
}
