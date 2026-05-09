import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;

  //Auth failure
  const factory ApiFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
  const factory ApiFailure.tokenExpired() = _TokenExpired;
  const factory ApiFailure.authenticationFailed() = _AuthenticationFailed;
  const factory ApiFailure.userNameNotFound() = _UserNameNotFound;
}

extension ApiFailureExt on ApiFailure {
  String get failureMessage => map(
    other: (other) => other.message,
    serverError: (serverError) => serverError.message,
    invalidEmailAndPasswordCombination: (_) =>
        'Incorrect username and/or password.',
    tokenExpired: (_) => 'Session token is Expired',
    authenticationFailed: (_) => 'Your session has expired',
    userNameNotFound: (_) => 'User not found.',
  );

  int get failureCode => map(
    other: (other) => 0,
    serverError: (serverError) => 0,
    invalidEmailAndPasswordCombination: (_) => 0,
    tokenExpired: (_) => 0,
    authenticationFailed: (_) => 0,
    userNameNotFound: (_) => 0,
  );
}
