import 'package:mutual_fund_app/domain/auth/repository/i_auth_repository.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthRepository authRepository;

  LoginFormBloc({required this.authRepository})
    : super(LoginFormState.initial()) {
    on<LoginFormEvent>(_onEvent);
  }
  Future<void> _onEvent(
    LoginFormEvent event,
    Emitter<LoginFormState> emit,
  ) async {
    await event.map(
      initialized: (_Initialized value) {
        emit(LoginFormState.initial());
      },
      userNameChanged: (e) async {
        emit(
          state.copyWith(
            userName: StringValue(e.userNameStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      passwordChanged: (e) async {
        emit(
          state.copyWith(
            password: Password.login(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
      passwordVisibilityChanged: (e) {
        emit(state.copyWith(passwordVisible: !state.passwordVisible));
      },
      loginWithUserNameAndPassword: (e) async {
        final isUserNameValid = state.userName.isValid();
        final isPasswordValid = state.password.isValid();

        if (isUserNameValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          final failureOrSuccess = await authRepository.loginWithPassword(
            username: state.userName,
            password: state.password,
          );

          await failureOrSuccess.fold(
            (_) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: true,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
            (login) async {
              await authRepository.storeTokenUserData(
                access: login.token,
              );
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                ),
              );
            },
          );
        } else {
          emit(
            state.copyWith(
              showErrorMessages: true,
              authFailureOrSuccessOption: none(),
            ),
          );
        }
      },
    );
  }
}
