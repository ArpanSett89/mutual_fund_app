import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mutual_fund_app/application/auth/auth_bloc.dart';
import 'package:mutual_fund_app/application/auth/login/login_form_bloc.dart';
import 'package:mutual_fund_app/application/scheme_list/scheme_list_bloc.dart';
import 'package:mutual_fund_app/application/user/user_bloc.dart';
import 'package:mutual_fund_app/config.dart';
import 'package:mutual_fund_app/infrastrucure/auth/datasource/auth_local.dart';
import 'package:mutual_fund_app/infrastrucure/auth/repository/auth_repository.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception_handler.dart';
import 'package:mutual_fund_app/infrastrucure/core/http/http.dart';
import 'package:mutual_fund_app/infrastrucure/core/http/interceptor/auth_interceptor.dart';
import 'package:mutual_fund_app/infrastrucure/core/local_storage/secure_storage.dart';
import 'package:mutual_fund_app/infrastrucure/core/local_storage/token_storage.dart';
import 'package:mutual_fund_app/infrastrucure/scheme/datasource/scheme_remote_datasource.dart';
import 'package:mutual_fund_app/infrastrucure/scheme/repository/scheme_repository.dart';
import 'package:mutual_fund_app/presentation/routes/router.dart';

GetIt locator = GetIt.instance;
const httpServiceWithoutInterceptor = 'HttpServiceWithoutInterceptor';

void setupLocator() {
  //============================================================
  //  CORE
  //
  //============================================================

  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());

  locator.registerLazySingleton<DataSourceExceptionHandler>(
    () => DataSourceExceptionHandler(),
  );
  locator.registerLazySingleton(() => SecureStorage());
  locator.registerLazySingleton(
    () => TokenUserIdStorage(secureStorage: locator<SecureStorage>()),
  );

  locator.registerLazySingleton(
    () => AuthInterceptor(
      tokenStorage: locator<TokenUserIdStorage>(),
      config: locator<Config>(),
    ),
  );

  locator.registerLazySingleton(
    () => HttpService(
      config: locator<Config>(),
      interceptors: <Interceptor>[locator<AuthInterceptor>()],
    ),
  );

  locator.registerLazySingleton(
    () => HttpService(config: locator<Config>(), interceptors: <Interceptor>[]),
    instanceName: httpServiceWithoutInterceptor,
  );

  //============================================================
  //  Authentication
  //============================================================

  locator.registerLazySingleton(
    () => AuthLocalDataSource(config: locator<Config>()),
  );

  locator.registerLazySingleton(
    () => AuthRepository(
      config: locator<Config>(),
      authLocalDataSource: locator<AuthLocalDataSource>(),
      tokenStorage: locator<TokenUserIdStorage>(),
    ),
  );

  locator.registerLazySingleton(
    () => AuthBloc(authRepository: locator<AuthRepository>()),
  );

  //============================================================
  //  Sign Up and Log in
  //
  //============================================================

  locator.registerLazySingleton<LoginFormBloc>(
    () => LoginFormBloc(authRepository: locator<AuthRepository>()),
  );
  //============================================================
  //  User
  //
  //============================================================

  locator.registerLazySingleton<UserBloc>(
    () => UserBloc(userRepository: locator<AuthRepository>()),
  );
  //============================================================
  //  Scheme
  //
  //============================================================
  locator.registerLazySingleton(
    () => SchemeRemoteDatasource(
      config: locator<Config>(),
      httpService: locator<HttpService>(),
      dataSourceExceptionHandler: locator<DataSourceExceptionHandler>(),
    ),
  );

  locator.registerLazySingleton(
    () => SchemeRepository(
      config: locator<Config>(),
      remoteDatasource: locator<SchemeRemoteDatasource>(),
    ),
  );
  locator.registerLazySingleton<SchemeListBloc>(
    () => SchemeListBloc(schemeRepository: locator<SchemeRepository>()),
  );
}
