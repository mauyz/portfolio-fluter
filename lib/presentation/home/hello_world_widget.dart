import 'package:flutter/material.dart';

class HelloWorldWidget extends StatelessWidget {
  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "{ Hello world }",
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
