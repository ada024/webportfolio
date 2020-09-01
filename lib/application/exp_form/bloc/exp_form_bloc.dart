import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/exp_form/exp_form.dart';
import '../../../domain/exp_form/exp_form_failure.dart';
import '../../../domain/exp_form/i_exp_form_repository.dart';
import '../../../domain/exp_form/value_objects.dart';

part 'exp_form_bloc.freezed.dart';
part 'exp_form_event.dart';
part 'exp_form_state.dart';

@injectable
class ExpFormBloc extends Bloc<ExpFormEvent, ExpFormState> {
  final IExpFormRepository _expFormRepository;

  ExpFormBloc(this._expFormRepository)
      : super(ExpFormState.initial());

  @override
  Stream<ExpFormState> mapEventToState(
    ExpFormEvent event,
  ) async* {
    yield* event.map(nameChanged: (e) async* {
      yield state.copyWith(
        name: Name(e.name),
        submitFailureOrSuccessOption: none(),
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
        replyTo: ReplyTo(e.email),
        submitFailureOrSuccessOption: none(),
      );
    }, messageChanged: (e) async* {
      yield state.copyWith(
        message: Message(e.message),
        submitFailureOrSuccessOption: none(),
      );
    }, submit: (_) async* {
      Either<ExpFormFailure, Unit> failureOrSuccess;

      final isReplyToValid = state.replyTo.isValid();
      final isNameValid = state.name.isValid();
      final messageValid = state.message.isValid();

      if (isReplyToValid && isNameValid && messageValid) {
        yield state.copyWith(
          isSubmitting: true,
          submitFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _expFormRepository.submitForm(
          ExpForm(
            state.name,
            state.replyTo,
            state.message,
          ),
        );
      }
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        submitFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
