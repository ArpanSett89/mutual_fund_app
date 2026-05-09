part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required User user,
    required Option<Either<ApiFailure, dynamic>> userFailureOrSuccessOption,
  }) = _UserState;

  factory UserState.initial() => UserState(
    isLoading: false,
    user: User.empty(),
    userFailureOrSuccessOption: none(),
  );
}
