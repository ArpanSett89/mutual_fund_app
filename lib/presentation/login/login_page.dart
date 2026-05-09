import 'package:auto_route/auto_route.dart';
import 'package:mutual_fund_app/application/auth/auth_bloc.dart';
import 'package:mutual_fund_app/domain/core/utils/error_utils.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';
import 'package:mutual_fund_app/presentation/login/widgets/custom_text_field.dart';
import 'package:mutual_fund_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/application/auth/login/login_form_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/user_name_text_field.dart';
part 'widgets/password_text_field.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginFormBloc, LoginFormState>(
        listenWhen: (previous, current) =>
            previous.authFailureOrSuccessOption !=
            current.authFailureOrSuccessOption,
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                final errorMessage = ErrorUtils.getErrorMessage(
                  context,
                  failure,
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    key: const Key('loginWithEmailSnackBar'),
                    content: Text(errorMessage),
                    backgroundColor: ThemeColors.red,
                  ),
                );
              },
              (success) {
                context.read<AuthBloc>().add(const AuthEvent.authCheck());
              },
            ),
          );
        },
        builder: (context, state) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ThemeColors.primary, ThemeColors.black],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ThemeColors.white.withValues(alpha: 0.1),
                    ),
                    child: const Icon(
                      Icons.account_balance_wallet_rounded,
                      size: 70,
                      color: ThemeColors.white,
                    ),
                  ),

                  Text(
                    'Mutual Fund Tracker',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: ThemeColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Track your investments securely',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: ThemeColors.white),
                  ),

                  /// Login Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    decoration: const BoxDecoration(
                      color: ThemeColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: ThemeColors.black,
                              ),
                        ),

                        Text(
                          'Login to continue managing your portfolio',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),

                        const _UserNameTextField(),

                        const _PasswordTextField(),

                        BlocBuilder<LoginFormBloc, LoginFormState>(
                          buildWhen: (previous, current) =>
                              previous.isSubmitting != current.isSubmitting,
                          builder: (context, state) {
                            return SizedBox(
                              width: double.infinity,

                              child: ElevatedButton(
                                onPressed: state.isSubmitting
                                    ? null
                                    : () {
                                        context.read<LoginFormBloc>().add(
                                          const LoginFormEvent.loginWithUserNameAndPassword(),
                                        );
                                      },
                                child: state.isSubmitting
                                    ? CircularProgressIndicator(
                                        color: ThemeColors.white,
                                      )
                                    : const Text('LOGIN'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
