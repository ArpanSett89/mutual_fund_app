import 'package:mutual_fund_app/config.dart';

import 'package:dartz/dartz.dart';
import 'package:mutual_fund_app/domain/auth/entities/login.dart';
import 'package:mutual_fund_app/domain/auth/entities/user.dart';
import 'package:mutual_fund_app/domain/auth/repository/i_auth_repository.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';
import 'package:mutual_fund_app/infrastrucure/auth/datasource/auth_local.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/failure_handler.dart';
import 'package:mutual_fund_app/infrastrucure/core/local_storage/token_storage.dart';

class AuthRepository implements IAuthRepository {
  final Config config;
  final TokenUserIdStorage tokenStorage;
  final AuthLocalDataSource authLocalDataSource;
  AuthRepository({
    required this.config,
    required this.tokenStorage,
    required this.authLocalDataSource,
  });

  @override
  Future<Either<ApiFailure, Login>> loginWithPassword({
    required StringValue username,
    required Password password,
  }) async {
    try {
      final login = await authLocalDataSource.loginWithPassword(
        username: username.getOrCrash(),
        password: password.getOrCrash(),
      );
      return Right(login);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> tokenValid() async {
    try {
      final token = await tokenStorage.getToken();

      return token.getValue().isEmpty
          ? const Left(ApiFailure.tokenExpired())
          : const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> storeTokenUserData({
    required Token access,
  }) async {
    try {
      await tokenStorage.setToken(access);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> logout() async {
    try {
      await tokenStorage.clear();
      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, User>> getUser() async {
    try {
      final user = await authLocalDataSource.getUser();

      return Right(user);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
