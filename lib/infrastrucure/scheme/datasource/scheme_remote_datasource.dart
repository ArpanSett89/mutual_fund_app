import 'package:dio/dio.dart';
import 'package:mutual_fund_app/config.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme_details.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception_handler.dart';
import 'package:mutual_fund_app/infrastrucure/core/http/http.dart';
import 'package:mutual_fund_app/infrastrucure/scheme/dto/scheme_details_dto.dart';
import 'package:mutual_fund_app/infrastrucure/scheme/dto/scheme_dto.dart';

class SchemeRemoteDatasource {
  HttpService httpService;
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;
  SchemeRemoteDatasource({
    required this.httpService,
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<List<Scheme>> getSchemeList() async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await httpService.request(
        method: 'GET',
        url: '${config.baseUrl}${config.mfConstant}',
      );

      _authExceptionChecker(res: res);
      if (res.data != null) {
        return List.from(
          res.data,
        ).map((e) => SchemeDto.fromJson(e).toDomain()).toList();
      } else {
        return <Scheme>[];
      }
    });
  }

  Future<SchemeDetails> getSchemeDetails({required String schemeId}) async {
    return await dataSourceExceptionHandler.handle(() async {
      final res = await httpService.request(
        method: 'GET',
        url: '${config.baseUrl}${config.mfConstant}/$schemeId',
      );

      _authExceptionChecker(res: res);
      if (res.data != null) {
        return SchemeDetailsDto.fromJson(res.data).toDomain();
      } else {
        return SchemeDetails.empty();
      }
    });
  }

  void _authExceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode == 400 &&
        res.data != null &&
        res.data != null &&
        res.data.isNotEmpty) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? 'Something went wrong',
      );
    } else if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? 'Something went wrong',
      );
    }
  }
}
