import 'package:flutter/material.dart';
import 'package:portfolio/app/shared_preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_mode.g.dart';

@riverpod
class AppThemeMode extends _$AppThemeMode {
  @override
  ThemeMode build() {
    final darkMode = ref.read(sharedPreferencesProvider)?.getBool("darkMode");
    return darkMode == true ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleThemeMode() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final darkMode = !(sharedPreferences?.getBool("darkMode") ?? false);
    sharedPreferences?.setBool("darkMode", darkMode);
    state = darkMode ? ThemeMode.dark : ThemeMode.light;
  }
}
