import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app/app_theme_mode.dart';

class LogoWidget extends ConsumerWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.read(appThemeModeProvider);
    return Image.asset(
      themeMode == ThemeMode.light
          ? 'assets/images/logo-black.png'
          : 'assets/images/logo-white.png',
      height: 48.0,
    );
  }
}
