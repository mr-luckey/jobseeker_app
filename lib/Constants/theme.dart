import 'package:flutter/material.dart';
import 'colors.dart';
import 'fontSize.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      error: errorColor,
      background: primaryColor,
      surface: backgroundColor,
      onPrimary: primaryColorDarkMode,
      onSecondary: primaryColorDarkMode,
      onBackground: textColor,
      onSurface: textColor,
      onError: primaryColorDarkMode,
    ),
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontSize: FontSize.label,
        color: textColor,
      ),
      labelMedium: TextStyle(
        fontSize: FontSize.button,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: FontSize.subheading,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontSize: FontSize.heading,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontSize: FontSize.title,
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: FontSize.pageTitle,
        color: textColor,
      ),
      headlineLarge: TextStyle(
        fontSize: FontSize.xxxl,
        color: textColor,
      ),
      displayLarge: TextStyle(
        fontSize: FontSize.xxxxl,
        color: textColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundColor,
      foregroundColor: textColor,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: primaryColorDarkMode,
        textStyle: TextStyle(
          fontSize: FontSize.button,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColorDarkMode,
    scaffoldBackgroundColor: backgroundColorDarkMode,
    colorScheme: ColorScheme.dark(
      primary: primaryColorDarkMode,
      secondary: secondaryColor,
      error: errorColor,
      background: backgroundColorDarkMode,
      surface: backgroundColorDarkMode,
      onPrimary: primaryColor,
      onSecondary: primaryColor,
      onBackground: textColorDarkMode,
      onSurface: textColorDarkMode,
      onError: primaryColor,
    ),
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontSize: FontSize.label,
        color: textColorDarkMode,
      ),
      labelMedium: TextStyle(
        fontSize: FontSize.button,
        color: textColorDarkMode,
      ),
      bodyMedium: TextStyle(
        fontSize: FontSize.subheading,
        color: textColorDarkMode,
      ),
      titleMedium: TextStyle(
        fontSize: FontSize.heading,
        color: textColorDarkMode,
      ),
      titleLarge: TextStyle(
        fontSize: FontSize.title,
        color: textColorDarkMode,
      ),
      headlineMedium: TextStyle(
        fontSize: FontSize.pageTitle,
        color: textColorDarkMode,
      ),
      headlineLarge: TextStyle(
        fontSize: FontSize.xxxl,
        color: textColorDarkMode,
      ),
      displayLarge: TextStyle(
        fontSize: FontSize.xxxxl,
        color: textColorDarkMode,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundColorDarkMode,
      foregroundColor: textColorDarkMode,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColorDarkMode,
        foregroundColor: primaryColor,
        textStyle: TextStyle(
          fontSize: FontSize.button,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
