import 'dart:async';

import 'package:mutual_fund_app/domain/auth/repository/i_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      init: (e) async => add(const AuthEvent.authCheck()),
      authCheck: (e) async {
        final result = await authRepository.tokenValid();
        await result.fold(
          (invalid) async {
            emit(const AuthState.unauthenticated());
          },
          (valid) async {
            emit(const AuthState.authenticated());
          },
        );
      },
      logout: (e) async {
        await authRepository.logout();
        emit(const AuthState.unauthenticated());
      },
    );
  }
}
