import 'package:flutter/material.dart';
import 'package:portfolio/app/app_theme_provider.dart';
import 'package:portfolio/presentation/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: AppThemeProvider.light,
      darkTheme: AppThemeProvider.dark,
      home: const HomePage(),
    );
  }
}
