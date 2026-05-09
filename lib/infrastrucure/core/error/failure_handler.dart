import 'package:mutual_fund_app/domain/auth/error/auth_exception.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    if (error is AuthException) {
      return error.map(
        invalidEmailAndPasswordCombination: (_) =>
            const ApiFailure.invalidEmailAndPasswordCombination(),
        invalidUserName: (_) => const ApiFailure.userNameNotFound(),
      );
    }

    if (error is ServerException) {
      final message = error.message.toLowerCase();

      if (message == 'authentication failed' ||
          message ==
              'status: 401, message: token has either expired or its not valid') {
        return const ApiFailure.authenticationFailed();
      }

      return ApiFailure.serverError(error.message);
    }
    return ApiFailure.other(error.toString());
  }
}
