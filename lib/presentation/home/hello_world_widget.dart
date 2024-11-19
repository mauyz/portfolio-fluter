import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/custom_content_widget.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';

class HelloWorldWidget extends StatelessWidget {
  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContentWidget(
      text: "{ Hello world }",
      style: ResponsiveWidget.isMobile(context)
          ? Theme.of(context).textTheme.headlineMedium
          : Theme.of(context).textTheme.displayLarge,
    );
  }
}
