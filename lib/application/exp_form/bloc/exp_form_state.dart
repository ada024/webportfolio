part of 'exp_form_bloc.dart';

@freezed
abstract class ExpFormState with _$ExpFormState {
  const factory ExpFormState({
    @required Name name,
    @required ReplyTo replyTo,
    @required Message message,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<ExpFormFailure, Unit>> submitFailureOrSuccessOption,
  }) = _ExpFormState;

  factory ExpFormState.initial() => ExpFormState(
        name: Name(''),
        replyTo: ReplyTo(''),
        message: Message(''),
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccessOption: none(),
      );
}
