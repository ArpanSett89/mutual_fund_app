import 'package:mutual_fund_app/config.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception.dart';
// import 'package:mutual_fund_app/infrastrucure/core/local_storage/device_storage.dart';
import 'package:mutual_fund_app/infrastrucure/core/local_storage/token_storage.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Config config;
  // final DeviceStorage deviceStorage;
  final TokenUserIdStorage tokenStorage;

  AuthInterceptor({
    // required this.deviceStorage,s
    required this.tokenStorage,
    required this.config,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.baseUrl = config.baseUrl;
    try {
      var token = await tokenStorage.getToken();

      if (token.isValid()) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    } on CacheException catch (_) {}
    options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    options.headers['Accept-Language'] = 'en';

    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    try {
      if (response.data.isNotEmpty &&
          response.statusCode != null &&
          response.statusCode == 401 &&
          (response.data['message'] == 'token_not_valid')) {
        final newResponse = await _retry(response.requestOptions);

        return handler.next(newResponse);
      }

      return super.onResponse(response, handler);
    } catch (e) {
      return super.onResponse(response, handler);
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        sendTimeout: Duration(milliseconds: config.httpSendTimeout),
        connectTimeout: Duration(milliseconds: config.httpConnectTimeout),
        receiveTimeout: Duration(milliseconds: config.httpReceiveTimeout),
      ),
    );

    return await dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: requestOptions.headers,
      ),
    );
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler);
  }
}
