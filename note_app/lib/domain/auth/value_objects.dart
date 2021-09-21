import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/core/value_objects.dart';
import 'package:note_app/core/value_validators.dart';

part 'value_objects.freezed.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}



@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;
}