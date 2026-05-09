import 'dart:async';
import 'dart:io';

import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:mutual_fund_app/config.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;

  HttpService({
    required Config config,
    required List<Interceptor> interceptors,
  }) {
    // We only enable network log when run on debug mode and not in test mode
    final enableLog =
        kDebugMode && !Platform.environment.containsKey('FLUTTER_TEST');

    _dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        sendTimeout: Duration(milliseconds: config.httpSendTimeout),
        connectTimeout: Duration(milliseconds: config.httpConnectTimeout),
        receiveTimeout: Duration(milliseconds: config.httpReceiveTimeout),
        validateStatus: (int? status) => status != null && status > 0,
      ),
    );
    // https://github.com/cfug/dio/issues/2106
    _dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () =>
          HttpClient()
            ..idleTimeout = Duration(milliseconds: config.httpIdleTimeout),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      if (enableLog)
        PrettyDioLogger(
          requestHeader: true,
          queryParameters: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
          showProcessingTime: true,
          convertFormData: true,
          canShowLog: kDebugMode,
          showCUrl: false,
        ),
    ]);
  }

  HttpService.mockDio(Dio dio) : _dio = dio;

  Future<Response> request({
    required String method,
    required String url,
    dynamic data = const {}, // can be Map<String, dynamic> or FormData
    ResponseType responseType = ResponseType.json,
    bool overrideBaseUrl = false,
    String cacheControl = '',
    Map<String, dynamic> headers = const <String, dynamic>{},
  }) async {
    try {
      if (overrideBaseUrl) _dio.options.baseUrl = url;

      _dio.options.method = method;
      _dio.options.responseType = responseType;
      _dio.options.headers['cache-control'] = cacheControl;
      for (final headerInfo in headers.entries) {
        _dio.options.headers[headerInfo.key] = headerInfo.value;
      }

      return await _dio.request(url, data: data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse && e.response != null) {
        return e.response!;
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return Response(
          requestOptions: RequestOptions(),
          statusCode: 522,
          statusMessage: 'Connection timeout! Please try again after some time',
          data: {'data': null},
        );
      }

      rethrow;
    }
  }
}
