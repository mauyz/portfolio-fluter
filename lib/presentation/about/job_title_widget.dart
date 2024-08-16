import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class JobTitleWidget extends StatelessWidget {
  final List<String> titles;
  const JobTitleWidget({super.key, required this.titles});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: titles.map(
        (e) {
          return TyperAnimatedText(
            e,
            textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
            speed: const Duration(
              milliseconds: 100,
            ),
          );
        },
      ).toList(),
    );
  }
}
