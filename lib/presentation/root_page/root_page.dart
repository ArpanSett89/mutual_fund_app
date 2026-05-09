// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutual_fund_app/application/auth/auth_bloc.dart';
import 'package:mutual_fund_app/application/user/user_bloc.dart';
import 'package:mutual_fund_app/domain/core/utils/error_utils.dart';
import 'package:mutual_fund_app/presentation/routes/router.gr.dart';
import 'package:mutual_fund_app/presentation/theme/colors.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            state.mapOrNull(
              authenticated: (authState) {
                context.read<UserBloc>().add(const UserEvent.fetch());
              },
              unauthenticated: (unauthState) async {
                final routeContext = context.router;

                Future.delayed(const Duration(seconds: 1), () async {
                  await routeContext.replaceAll([
                    const RootPageRoute(),
                    const LoginPageRoute(),
                  ]);
                });
              },
            );
          },
        ),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.userFailureOrSuccessOption !=
              current.userFailureOrSuccessOption,
          listener: (context, state) {
            state.userFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  final errorMessage = ErrorUtils.getErrorMessage(
                    context,
                    failure,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(errorMessage),
                      backgroundColor: Colors.red,
                    ),
                  );
                  context.read<AuthBloc>().add(const AuthEvent.logout());
                },
                (success) async {
                  // context.read<SchemeListBloc>().add(const SchemeListEvent.fetchSchemeList());
                  await context.router.replaceAll(const [
                    RootPageRoute(),
                    SchemeListPageRoute(),
                  ]);
                },
              ),
            );
          },
        ),
      ],
      child: const _Splash(),
    );
  }
}

class _Splash extends StatelessWidget {
  const _Splash();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: ThemeColors.primary,
            // image: DecorationImage(
            //   fit: BoxFit.fill,
            //   image: AssetImage(PngImage.splashBackground),
            // ),
          ),
          child: Center(child: Icon(Icons.monetization_on)),
        ),
      ),
    );
  }
}
