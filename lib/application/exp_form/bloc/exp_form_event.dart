part of 'exp_form_bloc.dart';

@freezed
abstract class ExpFormEvent with _$ExpFormEvent {
  const factory ExpFormEvent.nameChanged(String name) = _NameChanged;
  const factory ExpFormEvent.emailChanged(String email) = _EmailChanged;
  const factory ExpFormEvent.messageChanged(String message) =
      _MessageChanged;
  const factory ExpFormEvent.submit() = _Submit;
}
