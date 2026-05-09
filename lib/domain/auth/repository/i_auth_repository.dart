import 'package:dartz/dartz.dart';
import 'package:mutual_fund_app/domain/auth/entities/login.dart';
import 'package:mutual_fund_app/domain/auth/entities/user.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, Login>> loginWithPassword({
    required StringValue username,
    required Password password,
  });
  Future<Either<ApiFailure, Unit>> tokenValid();
  Future<Either<ApiFailure, Unit>> logout();

  Future<Either<ApiFailure, Unit>> storeTokenUserData({required Token access});
  Future<Either<ApiFailure, User>> getUser();
}
