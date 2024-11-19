import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/custom_content_widget.dart';

class HelloWorldWidget extends StatelessWidget {
  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContentWidget(
      text: "{ Hello world }",
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
