part of 'package:mutual_fund_app/presentation/login/login_page.dart';

class _UserNameTextField extends StatefulWidget {
  const _UserNameTextField();

  @override
  State<_UserNameTextField> createState() => _UserNameTextFieldState();
}

class _UserNameTextFieldState extends State<_UserNameTextField> {
  final TextEditingController userNameController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting ||
          previous.userName != current.userName ||
          previous.showErrorMessages != current.showErrorMessages,

      builder: (context, state) {
        userNameController.text = state.userName.getOrDefaultValue('');
        return TextFieldWithLabel(
          fieldKey: const Key('EnterUsernameField'),
          labelText: 'User Name',
          labelStyle: Theme.of(context).textTheme.bodyMedium,
          controller: userNameController,
          onChanged: (text) => context.read<LoginFormBloc>().add(
            LoginFormEvent.userNameChanged(text),
          ),
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) =>
              context.read<LoginFormBloc>().state.userName.value.fold(
                (f) => f.maybeMap(
                  empty: (_) => 'User name is required.',
                  orElse: () => null,
                ),
                (_) => null,
              ),
          decoration: InputDecoration(
            errorMaxLines: 2,
            hintText: 'Enter username',
            hintStyle: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: ThemeColors.extraLightGray),
            prefixIcon: const Icon(
              Icons.person_outline,
              color: ThemeColors.extraLightGray,
            ),
          ),
        );
      },
    );
  }
}
