import 'package:dartz/dartz.dart';
import 'package:webportfolio/domain/core/failures.dart';
import 'package:webportfolio/domain/core/value_objects.dart';
import 'package:webportfolio/domain/core/value_validators.dart';

class ProjectDesc extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 200;

  factory ProjectDesc(String input) {
    assert(input != null);
    return ProjectDesc._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ProjectDesc._(this.value);
}

class ProjectTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory ProjectTitle(String input) {
    assert(input != null);
    return ProjectTitle._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const ProjectTitle._(this.value);
}

class ProjectTag extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProjectTag(String input) {
    assert(input != null);
    return ProjectTag._(
      validateStringNotEmpty(input),
    );
  }

  const ProjectTag._(this.value);
}

class ProjectThumbnail extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProjectThumbnail(String input) {
    assert(input != null);
    return ProjectThumbnail._(
      validateStringNotEmpty(input),
    );
  }

  const ProjectThumbnail._(this.value);
}

class ProjectUri extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProjectUri(String input) {
    assert(input != null);
    return ProjectUri._(
      validateStringNotEmpty(input),
    );
  }

  const ProjectUri._(this.value);
}