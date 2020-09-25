part of 'exp_bloc.dart';

@freezed
abstract class ExpState with _$ExpState {
  const factory ExpState.initial() = _Initial;
  const factory ExpState.loading() = _Loading;
  const factory ExpState.loadSuccess(KtList<Experience> exp) = _LoadSuccess;
  const factory ExpState.loadFailure(ExpFailure expFailure) = _LoadFailure;
}
