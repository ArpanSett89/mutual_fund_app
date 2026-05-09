part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.initialized() = _Initialized;
  const factory LoginFormEvent.loginWithUserNameAndPassword() =
      _LoginWithUserNameAndPassword;
  const factory LoginFormEvent.passwordVisibilityChanged() =
      _PasswordVisibleChanged;
  const factory LoginFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory LoginFormEvent.userNameChanged(String userNameStr) =
      _UserNameChanged;
}
