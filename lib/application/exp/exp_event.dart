part of 'exp_bloc.dart';

@freezed
abstract class ExpEvent with _$ExpEvent {
  const factory ExpEvent.fetch() = _Fetch;
}