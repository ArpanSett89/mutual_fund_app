

import 'package:flutter/material.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';

class ErrorUtils {
  static String getErrorMessage(BuildContext context, ApiFailure failure) {
    return failure.failureMessage;
  }

  static int getErrorCode(BuildContext context, ApiFailure failure) {
    return failure.failureCode;
  }
}
