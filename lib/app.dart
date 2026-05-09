import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutual_fund_app/application/auth/auth_bloc.dart';
import 'package:mutual_fund_app/application/auth/login/login_form_bloc.dart';
import 'package:mutual_fund_app/application/scheme_list/scheme_list_bloc.dart';
import 'package:mutual_fund_app/application/user/user_bloc.dart';
import 'package:mutual_fund_app/config.dart';
import 'package:mutual_fund_app/locator.dart';
import 'package:mutual_fund_app/presentation/routes/router.dart';
import 'package:mutual_fund_app/presentation/theme/theme_data.dart';

Future<void> initialSetup({bool bypassNotificationPermission = false}) async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}

Future<void> runAppWithCrashlyticsAndLocalization() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => locator<AuthBloc>()..add(const AuthEvent.init()),
        ),
        BlocProvider<LoginFormBloc>(
          create: (context) => locator<LoginFormBloc>(),
        ),
        BlocProvider<UserBloc>(create: (context) => locator<UserBloc>()),
        BlocProvider<SchemeListBloc>(
          create: (context) => locator<SchemeListBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: locator<Config>().appName,
        theme: ThemeManager.getTheme(AppTheme.light, context),
        routerDelegate: AutoRouterDelegate(router),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
