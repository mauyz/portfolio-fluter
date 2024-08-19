import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_theme_mode.g.dart';

final sharedPreferencesProvider =
    FutureProvider<SharedPreferences>((ref) async {
  return SharedPreferences.getInstance();
});

@riverpod
class AppThemeMode extends _$AppThemeMode {
  @override
  ThemeMode build() {
    final darkMode =
        ref.read(sharedPreferencesProvider).value?.getBool("darkMode");
    return darkMode == true ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleThemeMode() {
    final sharedPreferences = ref.read(sharedPreferencesProvider).value;
    final darkMode = !(sharedPreferences?.getBool("darkMode") ?? false);
    sharedPreferences?.setBool("darkMode", darkMode);
    state = darkMode ? ThemeMode.dark : ThemeMode.light;
  }
}
