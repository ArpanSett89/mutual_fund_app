// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:mutual_fund_app/presentation/login/login_page.dart' as _i1;
import 'package:mutual_fund_app/presentation/root_page/root_page.dart' as _i2;
import 'package:mutual_fund_app/presentation/scema_list/schema_list_screen.dart'
    as _i4;
import 'package:mutual_fund_app/presentation/scheme_details/scheme_details_screen.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    RootPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RootPage(),
      );
    },
    SchemeDetailsPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SchemeDetailsPage(),
      );
    },
    SchemeListPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SchemeListPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i5.PageRouteInfo<void> {
  const LoginPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RootPage]
class RootPageRoute extends _i5.PageRouteInfo<void> {
  const RootPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RootPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SchemeDetailsPage]
class SchemeDetailsPageRoute extends _i5.PageRouteInfo<void> {
  const SchemeDetailsPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SchemeDetailsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchemeDetailsPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SchemeListPage]
class SchemeListPageRoute extends _i5.PageRouteInfo<void> {
  const SchemeListPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SchemeListPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SchemeListPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
