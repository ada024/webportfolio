import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'exp_form.freezed.dart';

@freezed
abstract class ExpForm with _$ExpForm {
  const factory ExpForm(Name name, ReplyTo replyTo, Message message) =
      _ExpForm;
}
