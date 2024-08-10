import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app/app_router.dart';
import 'package:portfolio/app/app_theme.dart';
import 'package:portfolio/app/app_theme_mode.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();
    final themeModeProvider = ref.watch(appThemeModeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: themeModeProvider,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: appRouter.config(),
    );
  }
}
