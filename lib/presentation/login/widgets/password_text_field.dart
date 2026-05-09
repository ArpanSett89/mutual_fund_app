part of 'package:mutual_fund_app/presentation/login/login_page.dart';

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField();

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  final TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        passwordController.text = state.password.getOrDefaultValue('');
        return TextFieldWithLabel(
          fieldKey: const Key('loginPasswordField'),
          labelText: 'Password',
          labelStyle: Theme.of(context).textTheme.bodyMedium,
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          controller: passwordController,
          obscuringCharacter: '*',
          onChanged: (text) => context.read<LoginFormBloc>().add(
            LoginFormEvent.passwordChanged(text),
          ),
          obscureText: !state.passwordVisible,
          validator: (text) => Password.login(text ?? '').value.fold(
            (f) => f.maybeMap(
              empty: (_) => 'Password cannot be empty.',
              orElse: () => null,
            ),
            (_) => null,
          ),
          onDone: (value) {
            if (!state.isSubmitting) {
              FocusScope.of(context).unfocus();
              context.read<LoginFormBloc>().add(
                const LoginFormEvent.loginWithUserNameAndPassword(),
              );
            }
          },
          decoration: InputDecoration(
            errorMaxLines: 2,
            hintText: 'Enter your password',
            hintStyle: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: ThemeColors.extraLightGray),
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: ThemeColors.lightGray,
            ),
            suffixIcon: GestureDetector(
              key: const Key('loginPasswordFieldSuffixIcon'),
              child: Icon(
                !state.passwordVisible
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: ThemeColors.extraLightGray,
              ),
              onTap: () => context.read<LoginFormBloc>().add(
                const LoginFormEvent.passwordVisibilityChanged(),
              ),
            ),
          ),
        );
      },
    );
  }
}
