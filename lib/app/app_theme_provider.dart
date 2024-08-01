import 'package:flutter/material.dart';

class AppThemeProvider {
  static final ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0X002196f3),
      /*primary: const Color(0X00A0CAFD),
      onPrimary: const Color(0X00FFFFFF),
      primaryContainer: const Color(0X00D1E4FF),
      onPrimaryContainer: const Color(0X00001D36),
      secondary: const Color(0X00535F70),
      onSecondary: const Color(0X00FFFFFF),
      secondaryContainer: const Color(0X00D2E4FF),
      onSecondaryContainer: const Color(0X00101C2B),
      error: const Color(0x00BA1A1A),
      onError: const Color(0x00FFFFFF),
      errorContainer: const Color(0x00FFDAD5),
      onErrorContainer: const Color(0x00410001),*/
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );

  static final ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0x002196F3),
      /*primary: const Color(0X00A0CAFD),
      onPrimary: const Color(0X00003258),
      primaryContainer: const Color(0X00194975),
      onPrimaryContainer: const Color(0X00001D36),
      secondary: const Color(0X00BBC7DB),
      onSecondary: const Color(0X00FFFFFF),
      secondaryContainer: const Color(0X00D2E4FF),
      onSecondaryContainer: const Color(0X00001C37),
      error: const Color(0x00FFB4AB),
      onError: const Color(0x00690005),
      errorContainer: const Color(0x0093000A),
      onErrorContainer: const Color(0x00410002),*/
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}
