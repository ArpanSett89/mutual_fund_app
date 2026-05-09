import 'package:flutter/material.dart';

enum SchoolTypeEnum { primary, secondary, error }

String stringCapitalize(String text) {
  if (text.isEmpty) return '';
  if (text.length == 1) return text;

  return '${text[0].toUpperCase()}${text.characters.getRange(1).toLowerCase()}';
}

int getDateTimeIntValue(String value) =>
    isNumericOnly(value) ? int.parse(value) : 0;

bool isNumericOnly(String text) => RegExp(r'^\d+$').hasMatch(text);

bool isNotEmpty(String text) {
  final pattern = RegExp(
    r'^\s*$',
  ); // matches any string is not empty or white space

  return !pattern.hasMatch(text);
}

String getUpperCaseValue(String value) => value.toUpperCase();

String dashIfEmpty(String text) {
  return text.isEmpty ? '-' : text;
}

String naIfEmpty(String text) {
  return text.isEmpty ? 'NA' : text;
}

String guestUserIfEmpty(String text) {
  return text.isEmpty ? 'Unknwn' : text;
}

bool checkIfTrimmedValueNotEmpty(String text) => text.trim().isNotEmpty;

String trimAndRemoveConsecutiveSpace(String text) =>
    text.trim().replaceAll(RegExp(r'\s+'), ' ');

bool containsSubstringFromSourceOfSizeThree({
  required String textToValidate,
  required String sourceString,
}) {
  for (var i = 0; i <= sourceString.length - 3; i++) {
    final substring = sourceString.characters
        .getRange(i, i + 3)
        .string
        .toLowerCase();
    if (textToValidate.toLowerCase().contains(substring)) return true;
  }

  return false;
}
