import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mutual_fund_app/presentation/theme/colors.dart';

class TextFieldWithLabel extends StatelessWidget {
  const TextFieldWithLabel({
    super.key,
    required this.fieldKey,
    required this.labelText,
    this.controller,
    this.validator,
    required this.onChanged,
    required this.decoration,
    this.isEnabled = true,
    this.autoCorrect = false,
    this.keyboardType,
    this.initValue,
    this.textColor,
    this.obscureText = false,
    this.onDone,
    this.onTap,
    this.maxLines = 1,
    this.mandatory = false,
    this.readOnly = false,
    this.focusNode,
    this.obscuringCharacter = '•',
    this.inputFormatters,
    this.onTapOutside,
    this.maxLength,
    this.buildCounter,
    this.labelStyle,
    this.autovalidateMode,
  });
  final Key fieldKey;
  final String labelText;
  final TextEditingController? controller;
  final String obscuringCharacter;
  final Function(String?)? validator;
  final Function(String) onChanged;
  final InputDecoration decoration;
  final bool isEnabled;
  final bool autoCorrect;
  final TextInputType? keyboardType;
  final String? initValue;
  final Color? textColor;
  final bool obscureText;
  final Function(String)? onDone;
  final Function()? onTap;
  final int maxLines;
  final bool mandatory;
  final bool readOnly;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final TapRegionCallback? onTapOutside;
  final int? maxLength;
  final InputCounterWidgetBuilder? buildCounter;
  final TextStyle? labelStyle;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: labelText,
            style:
                labelStyle ??
                Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: ThemeColors.charcoalBlack,
                ),
            children: <TextSpan>[
              if (mandatory)
                TextSpan(
                  text: ' *',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: ThemeColors.red),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          autovalidateMode: autovalidateMode,
          focusNode: focusNode,
          inputFormatters: inputFormatters,
          obscuringCharacter: obscuringCharacter,
          key: fieldKey,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(color: textColor),
          autocorrect: autoCorrect,
          enabled: isEnabled,
          controller: controller,
          keyboardType: keyboardType,
          decoration: decoration.copyWith(
            hintStyle: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: ThemeColors.extraLightGray),
            contentPadding: const EdgeInsets.only(
              top: 10,
              right: 15,
              bottom: 10,
              left: 10,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ), // This sets the border radius
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ThemeColors.primary,
                width: 2,
              ), // Border color when focused
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ), // Match the radius
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ThemeColors.primary,
                width: 1,
              ), // Border color when enabled
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ), // Match the radius
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ThemeColors.extraLightGray,
                width: 1,
              ), // Border color when enabled
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ), // Match the radius
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ThemeColors.red,
                width: 1,
              ), // Border color when enabled
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ), // Match the radius
            ),
          ),
          obscureText: obscureText,
          onChanged: onChanged,
          validator: (value) => validator?.call(value),
          initialValue: initValue,
          onFieldSubmitted: onDone,
          onTapOutside: onTapOutside,
          maxLines: maxLines,
          maxLength: maxLength,
          readOnly: readOnly,
          onTap: onTap,
          buildCounter: buildCounter,
        ),
      ],
    );
  }
}
