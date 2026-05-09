import 'package:mutual_fund_app/application/auth/auth_bloc.dart';
import 'package:mutual_fund_app/domain/auth/entities/user.dart';
import 'package:mutual_fund_app/domain/auth/repository/i_auth_repository.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/locator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IAuthRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserState.initial()) {
    on<UserEvent>(_onEvent);
  }

  Future<void> _onEvent(UserEvent event, Emitter<UserState> emit) async {
    await event.map(
      initialized: (e) {
        emit(UserState.initial());
      },
      fetch: (e) async {
        emit(
          state.copyWith(
            user: User.empty(),
            isLoading: true,
            userFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await userRepository.getUser();

        await failureOrSuccess.fold(
          (failure) async {
            if (isClosed) return;
            emit(
              state.copyWith(
                isLoading: false,
                userFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
            final authBloc = locator<AuthBloc>();
            authBloc.add(const AuthEvent.logout());
          },
          (user) async {
            if (isClosed) return;

            emit(
              state.copyWith(
                user: user,
                isLoading: false,
                userFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
