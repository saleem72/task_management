//

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color primary10 = Color(0xff003314);
  static const Color primary20 = Color(0xff006627);
  static const Color primary30 = Color(0xff00993b);
  static const Color primary40 = Color(0xff00cc4e);
  static const Color primary80 = Color(0xff99ffc0);
  static const Color primary90 = Color(0xffccffe0);

  static const Color secondary10 = Color(0xff0d260d);
  static const Color secondary20 = Color(0xff194d19);
  static const Color secondary30 = Color(0xff267326);
  static const Color secondary40 = Color(0xff339933);
  static const Color secondary80 = Color(0xffb3e6b3);
  static const Color secondary90 = Color(0xffd9f2d9);

  static const Color tertiary10 = Color(0xff330033);
  static const Color tertiary20 = Color(0xff660066);
  static const Color tertiary30 = Color(0xff990099);
  static const Color tertiary40 = Color(0xffcc00cc);
  static const Color tertiary80 = Color(0xffff99ff);
  static const Color tertiary90 = Color(0xffffccff);

  static const Color error10 = Color(0xFF410001);
  static const Color error20 = Color(0xFF680003);
  static const Color error30 = Color(0xFF930006);
  static const Color error40 = Color(0xFFBA1B1B);
  static const Color error80 = Color(0xFFFFB4A9);
  static const Color error90 = Color(0xFFFFDAD4);

  static const Color neutralVarient30 = Color(0xFF316847);
  static const Color neutralVarient50 = Color(0xFF52ad76);
  static const Color neutralVarient60 = Color(0xFF74be92);
  static const Color neutralVarient80 = Color(0xFFbadec8);
  static const Color neutralVarient90 = Color(0xFFdcefe4);

  static const Color neutral10 = Color(0xFF191C1D);
  static const Color neutral20 = Color(0xFF2D3132);
  static const Color neutral90 = Color(0xFFE0E3E3);
  static const Color neutral95 = Color(0xFFEFF1F1);
  static const Color neutral99 = Color(0xFFFBFDFD);
}

const ColorScheme appLightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary40,
  onPrimary: Colors.white,
  primaryContainer: AppColors.primary90,
  onPrimaryContainer: AppColors.primary10,
  inversePrimary: AppColors.primary80,
  secondary: AppColors.secondary40,
  onSecondary: Colors.white,
  secondaryContainer: AppColors.secondary90,
  onSecondaryContainer: AppColors.secondary10,
  tertiary: AppColors.tertiary40,
  onTertiary: Colors.white,
  tertiaryContainer: AppColors.tertiary90,
  onTertiaryContainer: AppColors.tertiary10,
  error: AppColors.error40,
  onError: Colors.white,
  errorContainer: AppColors.error90,
  onErrorContainer: AppColors.error10,
  // light
  background: AppColors.neutral99,
  onBackground: AppColors.neutral10,
  inverseSurface: AppColors.neutral20,
  onInverseSurface: AppColors.neutral95,

  surfaceVariant: AppColors.neutralVarient90,
  onSurfaceVariant: AppColors.neutralVarient30,
  surface: AppColors.neutralVarient90,
  onSurface: AppColors.neutralVarient30,
  outline: AppColors.neutralVarient50,
  surfaceTint: AppColors.primary40,
);

const ColorScheme appDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.primary80,
  onPrimary: AppColors.primary20,
  primaryContainer: AppColors.primary30,
  onPrimaryContainer: AppColors.primary90,
  inversePrimary: AppColors.primary40,
  secondary: AppColors.secondary80,
  onSecondary: AppColors.secondary20,
  secondaryContainer: AppColors.secondary30,
  onSecondaryContainer: AppColors.secondary90,
  tertiary: AppColors.tertiary80,
  onTertiary: AppColors.tertiary20,
  tertiaryContainer: AppColors.tertiary30,
  onTertiaryContainer: AppColors.tertiary90,
  error: AppColors.error80,
  onError: AppColors.error20,
  errorContainer: AppColors.error30,
  onErrorContainer: AppColors.error90,
  // dark
  background: AppColors.neutral10,
  onBackground: AppColors.neutral90,
  inverseSurface: AppColors.neutral90,
  onInverseSurface: AppColors.neutral10,
  surface: AppColors.neutralVarient30,
  onSurface: AppColors.neutralVarient80,
  surfaceVariant: AppColors.neutralVarient30,
  onSurfaceVariant: AppColors.neutralVarient80,
  outline: AppColors.neutralVarient80,
  surfaceTint: AppColors.primary80,
);

ThemeData appLightTheme = ThemeData(
  colorScheme: appLightColorScheme,
  scaffoldBackgroundColor: AppColors.neutral90,
);

ThemeData appDarkTheme = ThemeData(
  colorScheme: appDarkColorScheme,
  scaffoldBackgroundColor: AppColors.neutral10,
);
