import 'package:flutter/material.dart';

class AboutImageWidget extends StatelessWidget {
  const AboutImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      width: 435,
      height: 457,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/stack.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
