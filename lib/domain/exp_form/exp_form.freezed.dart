// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exp_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExpFormTearOff {
  const _$ExpFormTearOff();

// ignore: unused_element
  _ExpForm call(Name name, ReplyTo replyTo, Message message) {
    return _ExpForm(
      name,
      replyTo,
      message,
    );
  }
}

// ignore: unused_element
const $ExpForm = _$ExpFormTearOff();

mixin _$ExpForm {
  Name get name;
  ReplyTo get replyTo;
  Message get message;

  $ExpFormCopyWith<ExpForm> get copyWith;
}

abstract class $ExpFormCopyWith<$Res> {
  factory $ExpFormCopyWith(ExpForm value, $Res Function(ExpForm) then) =
      _$ExpFormCopyWithImpl<$Res>;
  $Res call({Name name, ReplyTo replyTo, Message message});
}

class _$ExpFormCopyWithImpl<$Res> implements $ExpFormCopyWith<$Res> {
  _$ExpFormCopyWithImpl(this._value, this._then);

  final ExpForm _value;
  // ignore: unused_field
  final $Res Function(ExpForm) _then;

  @override
  $Res call({
    Object name = freezed,
    Object replyTo = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
      replyTo: replyTo == freezed ? _value.replyTo : replyTo as ReplyTo,
      message: message == freezed ? _value.message : message as Message,
    ));
  }
}

abstract class _$ExpFormCopyWith<$Res> implements $ExpFormCopyWith<$Res> {
  factory _$ExpFormCopyWith(_ExpForm value, $Res Function(_ExpForm) then) =
      __$ExpFormCopyWithImpl<$Res>;
  @override
  $Res call({Name name, ReplyTo replyTo, Message message});
}

class __$ExpFormCopyWithImpl<$Res> extends _$ExpFormCopyWithImpl<$Res>
    implements _$ExpFormCopyWith<$Res> {
  __$ExpFormCopyWithImpl(_ExpForm _value, $Res Function(_ExpForm) _then)
      : super(_value, (v) => _then(v as _ExpForm));

  @override
  _ExpForm get _value => super._value as _ExpForm;

  @override
  $Res call({
    Object name = freezed,
    Object replyTo = freezed,
    Object message = freezed,
  }) {
    return _then(_ExpForm(
      name == freezed ? _value.name : name as Name,
      replyTo == freezed ? _value.replyTo : replyTo as ReplyTo,
      message == freezed ? _value.message : message as Message,
    ));
  }
}

class _$_ExpForm implements _ExpForm {
  const _$_ExpForm(this.name, this.replyTo, this.message)
      : assert(name != null),
        assert(replyTo != null),
        assert(message != null);

  @override
  final Name name;
  @override
  final ReplyTo replyTo;
  @override
  final Message message;

  @override
  String toString() {
    return 'ExpForm(name: $name, replyTo: $replyTo, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExpForm &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.replyTo, replyTo) ||
                const DeepCollectionEquality()
                    .equals(other.replyTo, replyTo)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(replyTo) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$ExpFormCopyWith<_ExpForm> get copyWith =>
      __$ExpFormCopyWithImpl<_ExpForm>(this, _$identity);
}

abstract class _ExpForm implements ExpForm {
  const factory _ExpForm(Name name, ReplyTo replyTo, Message message) =
      _$_ExpForm;

  @override
  Name get name;
  @override
  ReplyTo get replyTo;
  @override
  Message get message;
  @override
  _$ExpFormCopyWith<_ExpForm> get copyWith;
}
