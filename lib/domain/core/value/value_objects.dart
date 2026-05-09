import 'package:mutual_fund_app/domain/core/error/errors.dart';
import 'package:mutual_fund_app/domain/core/error/failures.dart';
import 'package:mutual_fund_app/domain/core/value/value_transformers.dart';
import 'package:mutual_fund_app/domain/core/value/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringValue(String input) =>
      StringValue._(validateStringNotEmpty(input));

  String get displayDashIfEmpty => dashIfEmpty((value.getOrElse(() => '')));

  String get displayNAIfEmpty => naIfEmpty(value.getOrElse(() => ''));
  String get displayUnknownIfEmptyForName =>
      guestUserIfEmpty(value.getOrElse(() => ''));

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;

  bool get isTrimmedValueNotEmpty =>
      checkIfTrimmedValueNotEmpty(value.getOrElse(() => ''));

  String get formattedValue =>
      trimAndRemoveConsecutiveSpace(value.getOrElse(() => ''));

  const StringValue._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(validateStringNotEmpty(input));
  }

  const Username._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password.login(String input) {
    return Password._(validateStringNotEmpty(input));
  }
  String get getValidPassword => value.fold((l) => l.failedValue, (r) => r);

  const Password._(this.value);
}

class Token extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Token(String input) {
    return Token._(validateStringNotEmpty(input));
  }

  // bool get isExpired {
  //   return isJWTExpired(value.getOrElse(() => ''));
  // }

  const Token._(this.value);
}
