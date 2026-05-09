import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mutual_fund_app/presentation/theme/colors.dart';

enum AppTheme { light, dark }

// Padding Constants
const double padding6 = 6.0;
const double padding12 = 12.0;
const double padding24 = 24.0;

class ThemeManager {
  static ThemeData getTheme(AppTheme theme, BuildContext context) {
    final isDark = theme == AppTheme.dark;

    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor: isDark
          ? ThemeColors.primaryDark
          : ThemeColors.white,
      primaryColor: ThemeColors.primary,
      canvasColor: ThemeColors.extraLightGray,
      colorScheme: _colorScheme(isDark),
      appBarTheme: _appBarTheme(isDark),
      iconTheme: _iconTheme(isDark),
      bottomNavigationBarTheme: _bottomNavigationBarTheme(isDark),
      navigationRailTheme: _navigationRailTheme(isDark),
      bottomSheetTheme: _bottomSheetTheme(isDark),
      drawerTheme: _drawerTheme(isDark),
      textTheme: _textTheme(isDark, context),
      primaryTextTheme: _textTheme(isDark, context),
      inputDecorationTheme: _inputDecorationTheme(isDark, context),
      floatingActionButtonTheme: _floatingActionButtonTheme(isDark),
      elevatedButtonTheme: _elevatedButtonTheme(isDark, context),
      textButtonTheme: _textButtonTheme(isDark),
      outlinedButtonTheme: _outlinedButtonTheme(isDark, context),
      checkboxTheme: _checkboxTheme(isDark),
      radioTheme: _radioTheme(isDark),
      progressIndicatorTheme: _progressIndicatorTheme(isDark),
      snackBarTheme: _snackBarTheme(isDark),
      dividerTheme: _dividerTheme(isDark),
      chipTheme: _chipTheme(isDark),
      listTileTheme: _listTileTheme(isDark),
      datePickerTheme: _datePickerTheme(isDark),
    );
  }

  static ColorScheme _colorScheme(bool isDarkTheme) {
    return isDarkTheme
        ? const ColorScheme.dark(
            primary: ThemeColors.primary,
            surface: ThemeColors.white,
            secondary: ThemeColors.secondary,
            onPrimary: ThemeColors.black,
            error: ThemeColors.red,
          )
        : const ColorScheme.light(
            primary: ThemeColors.primary,
            surface: ThemeColors.white,
            secondary: ThemeColors.secondary,
            onPrimary: ThemeColors.black,
            error: ThemeColors.red,
          );
  }

  //============================================================
  //  LAYOUT
  //============================================================

  static AppBarTheme _appBarTheme(bool isDarkTheme) {
    return AppBarTheme(
      centerTitle: false,
      backgroundColor: isDarkTheme
          ? ThemeColors.appBarPrimaryDark
          : ThemeColors.appBarPrimary,
      surfaceTintColor: ThemeColors.transparent,
      iconTheme: const IconThemeData(color: ThemeColors.white),
      titleTextStyle: GoogleFonts.dmSans(
        fontSize: 18,
        color: ThemeColors.white,
      ),
      elevation: 5,
      shadowColor: ThemeColors.boxShadowColor,
    );
  }

  static IconThemeData _iconTheme(bool isDarkTheme) {
    return IconThemeData(color: ThemeColors.iconTextColor(isDarkTheme));
  }

  static BottomNavigationBarThemeData _bottomNavigationBarTheme(
    bool isDarkTheme,
  ) {
    return const BottomNavigationBarThemeData(
      selectedItemColor: ThemeColors.primary,
      unselectedItemColor: ThemeColors.unselectedLabelColor,
      type: BottomNavigationBarType.fixed,
      elevation: 2,
      backgroundColor: ThemeColors.white,
    );
  }

  static BottomSheetThemeData _bottomSheetTheme(bool isDarkTheme) {
    return const BottomSheetThemeData(
      backgroundColor: ThemeColors.white,
      surfaceTintColor: ThemeColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    );
  }

  static DrawerThemeData _drawerTheme(bool isDarkTheme) {
    return const DrawerThemeData(backgroundColor: ThemeColors.white);
  }

  static NavigationRailThemeData _navigationRailTheme(bool isDarkTheme) {
    return NavigationRailThemeData(
      elevation: 2,
      backgroundColor: ThemeColors.white,
      indicatorColor: ThemeColors.primary,
      // useIndicator: true,
      labelType: NavigationRailLabelType.all,
      selectedLabelTextStyle: GoogleFonts.dmSans(
        fontSize: 18,
        color: ThemeColors.primary,
      ),
      unselectedLabelTextStyle: GoogleFonts.dmSans(
        fontSize: 18,
        color: ThemeColors.unselectedLabelColor,
      ),
      selectedIconTheme: const IconThemeData(color: ThemeColors.primary),
      unselectedIconTheme: const IconThemeData(
        color: ThemeColors.unselectedLabelColor,
      ),
    );
  }
  //============================================================
  //  TEXT
  //============================================================

  static TextTheme _textTheme(bool isDarkTheme, BuildContext context) {
    final multiplier = _sizeMultiplier(context);
    return ThemeData.light().textTheme.copyWith(
      displayLarge: GoogleFonts.dmSans(
        fontSize: 24 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      displayMedium: GoogleFonts.dmSans(
        fontSize: 20 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      displaySmall: GoogleFonts.dmSans(
        fontSize: 10 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      titleLarge: GoogleFonts.dmSans(
        fontSize: 18 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      titleMedium: GoogleFonts.dmSans(
        fontSize: 16 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      titleSmall: GoogleFonts.dmSans(
        fontSize: 14 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      labelLarge: GoogleFonts.dmSans(
        fontSize: 18 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
      labelMedium: GoogleFonts.dmSans(
        fontSize: 16 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
      labelSmall: GoogleFonts.dmSans(
        fontSize: 14 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
      bodyLarge: GoogleFonts.dmSans(
        fontSize: 14 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      bodyMedium: GoogleFonts.dmSans(
        fontSize: 13 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      bodySmall: GoogleFonts.dmSans(
        fontSize: 12 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
      headlineLarge: GoogleFonts.dmSerifDisplay(
        fontSize: 30 * multiplier,
        color: isDarkTheme ? ThemeColors.charcoalBlack : ThemeColors.black,
        letterSpacing: 0.25,
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(
    bool isDarkTheme,
    BuildContext context,
  ) {
    final multiplier = _sizeMultiplier(context);
    return InputDecorationTheme(
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      labelStyle: GoogleFonts.dmSans(fontSize: 14.0 * multiplier),
      hintStyle: GoogleFonts.dmSans(
        fontSize: 16 * multiplier,
        color: ThemeColors.neutralsGrey,
        letterSpacing: 0.25,
      ),
      floatingLabelStyle: const TextStyle(color: ThemeColors.primary),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.primary, width: 2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.inputBorderColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.inputBorderColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ThemeColors.inputBorderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.red),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ThemeColors.red, width: 2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      iconColor: ThemeColors.primary,
      focusColor: ThemeColors.primary,
      hoverColor: ThemeColors.primary,
      prefixIconColor: ThemeColors.primary,
      suffixIconColor: ThemeColors.primary,
      filled: true,
      fillColor: ThemeColors.white,
    );
  }

  //============================================================
  //  BUTTONS
  //============================================================

  static FloatingActionButtonThemeData _floatingActionButtonTheme(
    bool isDarkTheme,
  ) {
    return const FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: ThemeColors.transparent,
      foregroundColor: ThemeColors.white,
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(
    bool isDarkTheme,
    BuildContext context,
  ) {
    final multiplier = _sizeMultiplier(context);
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: isDarkTheme
            ? ThemeColors.primary
            : ThemeColors.primary,
        foregroundColor: ThemeColors.white,
        disabledBackgroundColor: ThemeColors.onSurface,
        disabledForegroundColor: ThemeColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: GoogleFonts.dmSans(
          fontSize: 14 * multiplier,
          color: isDarkTheme ? ThemeColors.extraLightGray : ThemeColors.white,
          fontWeight: FontWeight.w600,
        ),
        elevation: 0.5,
        minimumSize: Size(120, 40 * multiplier),
      ),
    );
  }

  static TextButtonThemeData _textButtonTheme(bool isDarkTheme) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.dmSans(
          fontSize: 14,
          color: ThemeColors.textButtonColor,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.25,
        ),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme(
    bool isDarkTheme,
    BuildContext context,
  ) {
    final multiplier = _sizeMultiplier(context);
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: ThemeColors.white,
        side: const BorderSide(color: ThemeColors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textStyle: GoogleFonts.dmSans(
          fontSize: 15,
          color: ThemeColors.white,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.25,
        ),
        elevation: 0,
        minimumSize: Size(120, 40 * multiplier),
      ),
    );
  }

  //============================================================
  //  CONTROLS AND UI ELEMENTS
  //============================================================

  static CheckboxThemeData _checkboxTheme(bool isDarkTheme) {
    return CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      checkColor: WidgetStateProperty.all(ThemeColors.white),
      fillColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? ThemeColors.primary
            : ThemeColors.white,
      ),
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
    );
  }

  static RadioThemeData _radioTheme(bool isDarkTheme) {
    return RadioThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      fillColor: WidgetStateProperty.all(ThemeColors.primary),
    );
  }

  static ProgressIndicatorThemeData _progressIndicatorTheme(bool isDarkTheme) {
    return const ProgressIndicatorThemeData(color: ThemeColors.primary);
  }

  static SnackBarThemeData _snackBarTheme(bool isDarkTheme) {
    return const SnackBarThemeData(
      backgroundColor: ThemeColors.green,
      contentTextStyle: TextStyle(fontWeight: FontWeight.w600),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }

  static DividerThemeData _dividerTheme(bool isDarkTheme) {
    return const DividerThemeData(
      space: 0,
      indent: 1,
      endIndent: 1,
      thickness: 1.5,
      color: Color.fromARGB(255, 231, 225, 225),
    );
  }

  static ChipThemeData _chipTheme(bool isDarkTheme) {
    return ChipThemeData(
      backgroundColor: ThemeColors.onSurface,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      labelStyle: const TextStyle(
        fontSize: 14,
        letterSpacing: 0.25,
        height: 1.1,
      ),
      selectedColor: ThemeColors.primary,
      padding: EdgeInsets.zero,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
  }

  static ListTileThemeData _listTileTheme(bool isDarkTheme) {
    return ListTileThemeData(
      iconColor: ThemeColors.iconTextColor(isDarkTheme),
      textColor: ThemeColors.iconTextColor(isDarkTheme),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 2,
          color: ThemeColors.iconTextColor(isDarkTheme),
        ),
        borderRadius: BorderRadius.circular(10), //<-- SEE HERE
      ),
    );
  }

  static DatePickerThemeData _datePickerTheme(bool isDarkTheme) {
    return DatePickerThemeData(
      dayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ThemeColors.white;
        } else if (states.contains(WidgetState.disabled)) {
          return ThemeColors.darkGray;
        } else {
          return ThemeColors.black;
        }
      }),
      rangeSelectionBackgroundColor: ThemeColors.extraLightGray,
      surfaceTintColor: ThemeColors.extraLightGray,
    );
  }
}

double iconMultiplier(BuildContext context) => _sizeMultiplier(context);
double fontMultiplier(BuildContext context) => _sizeMultiplier(context);

// Utility functions
double _sizeMultiplier(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width < 600
      ? 1
      : width < 1200
      ? 1.2
      : 1.4;
}
