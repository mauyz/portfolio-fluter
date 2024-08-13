import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';
import 'package:portfolio/presentation/home/home_desktop.dart';
import 'package:portfolio/presentation/home/home_mobile.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: HomeMobile(),
      tablet: HomeDesktop(),
      desktop: HomeDesktop(),
    );
  }
}
