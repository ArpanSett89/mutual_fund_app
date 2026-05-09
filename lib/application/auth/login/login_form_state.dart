part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();
  const factory LoginFormState({
    required StringValue userName,
    required Password password,
    required bool showErrorMessages,
    required bool passwordVisible,
    required bool isSubmitting,
    required bool rememberMe,
    required Option<Either<ApiFailure, dynamic>> authFailureOrSuccessOption,
  }) = _LoginFormState;
  factory LoginFormState.initial() => LoginFormState(
    userName: StringValue(''),
    password: Password.login(''),
    showErrorMessages: false,
    authFailureOrSuccessOption: none(),
    passwordVisible: false,
    isSubmitting: false,
    rememberMe: false,
  );
}
