import 'package:flutter/material.dart';

class HelloWorldWidget extends StatelessWidget {
  const HelloWorldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            "Hello world ",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        Image.asset(
          "assets/images/hi.gif",
          height: 48.0,
        ),
      ],
    );
  }
}
