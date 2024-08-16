import 'package:flutter/material.dart';

class AboutImageWidget extends StatelessWidget {
  const AboutImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: 435,
      height: 457,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/stack.png"),
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
