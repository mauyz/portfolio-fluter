import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app/app_theme_mode.dart';
import 'package:portfolio/generated/l10n.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Tooltip(
      message: Theme.of(context).brightness == Brightness.light
          ? S.current.modeDark
          : S.current.lightMode,
      child: OutlinedButton(
        child: Icon(
          Theme.of(context).brightness == Brightness.light
              ? Icons.dark_mode
              : Icons.light_mode,
          color: Theme.of(context).colorScheme.error,
        ),
        onPressed: () {
          ref.read(appThemeModeProvider.notifier).toggleThemeMode();
        },
      ),
    );
  }
}
