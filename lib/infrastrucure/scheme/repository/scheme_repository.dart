import 'package:mutual_fund_app/config.dart';

import 'package:dartz/dartz.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme_details.dart';
import 'package:mutual_fund_app/domain/scheme/repository/i_scheme_repository.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/failure_handler.dart';
import 'package:mutual_fund_app/infrastrucure/scheme/datasource/scheme_remote_datasource.dart';

class SchemeRepository implements ISchemeRepository {
  final Config config;
  final SchemeRemoteDatasource remoteDatasource;
  SchemeRepository({required this.config, required this.remoteDatasource});

  @override
  Future<Either<ApiFailure, List<Scheme>>> fetchSchemeList({
    required String searchKey,
  }) async {
    try {
      final schemes = await remoteDatasource.getSchemeList();
      return Right(schemes);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, SchemeDetails>> fetchSchemeDetails({
    required String schemeId,
  }) async {
    try {
      final schemeDetails = await remoteDatasource.getSchemeDetails(
        schemeId: schemeId,
      );
      return Right(schemeDetails);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
