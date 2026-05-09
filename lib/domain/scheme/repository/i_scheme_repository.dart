import 'package:dartz/dartz.dart';

import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme_details.dart';

abstract class ISchemeRepository {
  Future<Either<ApiFailure, List<Scheme>>> fetchSchemeList({
    required String searchKey,
  });
  Future<Either<ApiFailure, SchemeDetails>> fetchSchemeDetails({
    required String schemeId,
  });
}
