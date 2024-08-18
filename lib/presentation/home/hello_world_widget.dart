import 'package:flutter/material.dart';

class HelloWorldWidget extends StatelessWidget {
  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const text = "Hello world ";
    final children = <TextSpan>[];
    for (final char in text.characters) {
      children.add(
        TextSpan(
          text: char,
          style: TextStyle.lerp(
            Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
            Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
            children.length / text.length,
          ),
        ),
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: children,
          ),
          textAlign: TextAlign.start,
        ),
        Image.asset(
          "assets/images/hi.gif",
          height: 48.0,
        ),
      ],
    );
  }
}
