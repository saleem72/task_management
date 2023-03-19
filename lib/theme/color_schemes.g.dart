import 'package:flutter/material.dart';

class GoogleColors {
  GoogleColors._();
  static const Color primary10 = Color(0xFF21005D);
  static const Color primary20 = Color(0xFF381E72);
  static const Color primary30 = Color(0xFF4F378B);
  static const Color primary40 = Color(0xFF6750A4);
  static const Color primary80 = Color(0xFFD0BCFF);
  static const Color primary90 = Color(0xFFEADDFF);

  static const Color secondary10 = Color(0xFF1D192B);
  static const Color secondary20 = Color(0xFF332D41);
  static const Color secondary30 = Color(0xFF4A4458);
  static const Color secondary40 = Color(0xFF625B71);
  static const Color secondary80 = Color(0xFFCCC2DC);
  static const Color secondary90 = Color(0xFFE8DEF8);

  static const Color tertiary10 = Color(0xFF31111D);
  static const Color tertiary20 = Color(0xFF492532);
  static const Color tertiary30 = Color(0xFF633B48);
  static const Color tertiary40 = Color(0xFF7D5260);
  static const Color tertiary80 = Color(0xFFEFB8C8);
  static const Color tertiary90 = Color(0xFFFFD8E4);

  static const Color error10 = Color(0xFF410E0B);
  static const Color error20 = Color(0xFF601410);
  static const Color error30 = Color(0xFF8C1D18);
  static const Color error40 = Color(0xFFB3261E);
  static const Color error80 = Color(0xFFF2B8B5);
  static const Color error90 = Color(0xFFF9DEDC);

  static const Color neutralVarient30 = Color(0xFF49454F);
  static const Color neutralVarient50 = Color(0xFF52ad76);
  static const Color neutralVarient60 = Color(0xFF74be92);
  static const Color neutralVarient80 = Color(0xFFCAC4D0);
  static const Color neutralVarient90 = Color(0xFFdcefe4);

  static const Color neutral10 = Color(0xFF1C1B1F);
  static const Color neutral20 = Color(0xFF2D3132);
  static const Color neutral90 = Color(0xFFE7E0EC);
  static const Color neutral95 = Color(0xFFEFF1F1);
  static const Color neutral99 = Color(0xFFFBFDFD);

  static const Color newNeutral01 = Color(0xFF1C1B1F);
  static const Color newNeutral02 = Color(0xFF313033);
  static const Color newNeutral03 = Color(0xFF49454F);
  static const Color newNeutral04 = Color(0xFFCAC4D0);
  static const Color newNeutral08 = Color(0xFFE6E1E5);
  static const Color newNeutral06 = Color(0xFFFFFBFE);

  static const Color another01 = Color(0xFFE7E0EC);
  static const Color another02 = Color(0xFFF4EFF4);
  static const Color another03 = Color(0xFF938F99);
  static const Color another04 = Color(0xFF79747E);

  static const Color dark001 = newNeutral01; // background:
  static const Color dark003 = newNeutral01; // surface:
  static const Color dark02 = newNeutral08; // onBackground:
  static const Color dark04 = newNeutral08; // onSurface:
  static const Color dark005 = newNeutral03; // surfaceVariant:
  static const Color dark010 = newNeutral03; // outlineVariant:
  static const Color dark006 = newNeutral04; // onSurfaceVariant:
  static const Color dark008 = newNeutral02; // onInverseSurface:
  static const Color dark07 = newNeutral08; // inverseSurface:
  static const Color dark011 = another03; // outline:

  static const Color light02 = newNeutral06; // background:
  static const Color light04 = newNeutral06; // surface:
  static const Color light03 = newNeutral01; // onBackground:
  static const Color light05 = newNeutral01; // onSurface:
  static const Color light07 = newNeutral03; // onSurfaceVariant:
  static const Color light11 = newNeutral04; // outlineVariant:
  static const Color light08 = newNeutral02; // inverseSurface:
  static const Color light06 = another01; // surfaceVariant:
  static const Color light09 = another02; // onInverseSurface:
  static const Color light01 = another04; // outline:
}

const googleDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFD0BCFF),
  onPrimary: Color(0xFF381E72),
  primaryContainer: Color(0xFF4F378B),
  onPrimaryContainer: Color(0xFFEADDFF),
  inversePrimary: Color(0xFF6750A4),
  secondary: Color(0xFFCCC2DC),
  onSecondary: Color(0xFF332D41),
  secondaryContainer: Color(0xFF4A4458),
  onSecondaryContainer: Color(0xFFE8DEF8),
  tertiary: Color(0xFFEFB8C8),
  onTertiary: Color(0xFF492532),
  tertiaryContainer: Color(0xFF633B48),
  onTertiaryContainer: Color(0xFFFFD8E4),
  error: Color(0xFFF2B8B5),
  onError: Color(0xFF601410),
  errorContainer: Color(0xFF8C1D18),
  onErrorContainer: Color(0xFFF9DEDC),
  //dark
  background: GoogleColors.newNeutral01,
  onBackground: GoogleColors.newNeutral08,
  inverseSurface: GoogleColors.newNeutral08,
  onInverseSurface: GoogleColors.newNeutral02,
  surface: GoogleColors.newNeutral01,
  onSurface: GoogleColors.newNeutral08,
  surfaceVariant: GoogleColors.newNeutral03,
  onSurfaceVariant: GoogleColors.newNeutral04,
  surfaceTint: GoogleColors.primary80,
  outlineVariant: GoogleColors.newNeutral03,
  outline: GoogleColors.another03,
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
);

const googleLightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF6750A4),
  onPrimary: Colors.white,
  primaryContainer: Color(0xFFEADDFF),
  onPrimaryContainer: Color(0xFF21005D),
  inversePrimary: Color(0xFFD0BCFF),
  secondary: Color(0xFF625B71),
  onSecondary: Colors.white,
  secondaryContainer: Color(0xFFE8DEF8),
  onSecondaryContainer: Color(0xFF1D192B),
  tertiary: Color(0xFF7D5260),
  onTertiary: Colors.white,
  tertiaryContainer: Color(0xFFFFD8E4),
  onTertiaryContainer: Color(0xFF31111D),
  error: Color(0xFFB3261E),
  onError: Colors.white,
  errorContainer: Color(0xFFF9DEDC),
  onErrorContainer: Color(0xFF410E0B),
  // light
  background: GoogleColors.newNeutral06,
  onBackground: GoogleColors.newNeutral01,
  surface: GoogleColors.newNeutral06,
  onSurface: GoogleColors.newNeutral01,
  surfaceVariant: GoogleColors.another01,
  onSurfaceVariant: GoogleColors.newNeutral03,
  inverseSurface: GoogleColors.newNeutral02,
  onInverseSurface: GoogleColors.another02,
  surfaceTint: GoogleColors.primary40,
  outlineVariant: GoogleColors.newNeutral04,
  outline: GoogleColors.another04,
  scrim: Color(0xFF000000),
  shadow: Color(0xFF000000),
);

ThemeData googleLightTheme = ThemeData(
  colorScheme: googleLightColorScheme,
  scaffoldBackgroundColor: GoogleColors.neutral90,
);

ThemeData googleDarkTheme = ThemeData(
  colorScheme: googleDarkColorScheme,
  scaffoldBackgroundColor: GoogleColors.neutral10,
);
