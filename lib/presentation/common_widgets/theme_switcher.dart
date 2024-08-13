import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app/app_theme_mode.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.read(appThemeModeProvider);
    return Switch(
      value: themeMode == ThemeMode.dark,
      onChanged: (_) =>
          ref.read(appThemeModeProvider.notifier).toggleThemeMode(),
    );
  }
}
