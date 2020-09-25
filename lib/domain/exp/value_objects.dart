



import 'package:dartz/dartz.dart';
import 'package:webportfolio/domain/core/failures.dart';
import 'package:webportfolio/domain/core/value_objects.dart';
import 'package:webportfolio/domain/core/value_validators.dart';

class ExpCompany extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ExpCompany(String input) {
    assert(input != null);
    return ExpCompany._(
      validateStringNotEmpty(input),
    );
  }
  const ExpCompany._(this.value);
}

class ExpPosition extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ExpPosition(String input) {
    assert(input != null);
    return ExpPosition._(
      validateStringNotEmpty(input),
    );
  }
  const ExpPosition._(this.value);
}

class ExpDuration extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ExpDuration(String input) {
    assert(input != null);
    return ExpDuration._(
      validateStringNotEmpty(input),
    );
  }
  const ExpDuration._(this.value);
}