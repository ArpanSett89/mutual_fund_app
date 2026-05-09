import 'package:flutter/material.dart';

abstract class ThemeColors {
  static const Color primary = Color(0xFF0F4C81);
  static const Color secondary = Color(0xFF2E8B57);

  static const Color primaryDark = Color(0xFF0A0A0A);
  static const Color unselectedLabelColor = Color(0xFF808080);
  static const Color onSurface = Color(0xFF1E293B);

  static const Color appBarPrimary = Color(0xFF0F4C81);
  static const Color appBarPrimaryDark = Color(0xFF121212);
  static const Color darkSkyBlue = Color(0xFF2A829E);
  static const Color backgroundTheme = Color(0xFFF6F6F6);
  static const Color charcoalBlack = Color(0xFF444444);
  static const Color subtitleColor = Color(0xFF000817);
  static const Color darkGray = Color(0xFF808080);
  static const Color textButtonColor = Color(0xFF2D5E64);
  static const Color lightGray = Color(0xFFAAAAAA);
  static const Color extraLightGray = Color(0xFF6B6B6B);
  static const Color inputBorderColor = Color(0xFFCFD2D2);
  static const Color white = Color(0xFFFAFAFA);
  static const Color black = Color(0xFF000000);
  static const Color green = Color.fromRGBO(147, 204, 56, 1);

  static const Color neutralsGrey = Color.fromRGBO(19, 19, 19, 0.4);
  static const Color boxShadowColor = Color.fromRGBO(0, 0, 0, 0.18);
  static const Color red = Color(0xFFDC2626);
  static const Color transparent = Color.fromRGBO(255, 255, 255, 0);
  final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: secondary,
      onSecondary: Colors.white,
      error: red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: onSurface,
    ),
    scaffoldBackgroundColor: Color(0xFFF8FAFC),
  );
  static Color iconTextColor(bool isDarkTheme) =>
      isDarkTheme ? charcoalBlack : white;
}
