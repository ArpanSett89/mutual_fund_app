import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/presentation/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Tab')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    //common flow
    AutoRoute(path: '/root_page', page: RootPageRoute.page, initial: true),
    AutoRoute(path: '/login_page', page: LoginPageRoute.page),
    AutoRoute(path: '/scheme_list_page', page: SchemeListPageRoute.page),
    AutoRoute(path: '/scheme_details_page', page: SchemeDetailsPageRoute.page),
  ];
}

Route<T> modalSheetBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => child,
    isScrollControlled: true,
  );
}
