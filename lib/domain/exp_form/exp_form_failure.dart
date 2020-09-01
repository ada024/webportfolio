import 'package:freezed_annotation/freezed_annotation.dart';

part 'exp_form_failure.freezed.dart';

@freezed
abstract class ExpFormFailure with _$ExpFormFailure {
  const factory ExpFormFailure.serverError() = ServerError;
}
