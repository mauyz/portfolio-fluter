import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedJobTitle extends StatelessWidget {
  final List<String> titles;
  const AnimatedJobTitle({super.key, required this.titles});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.play_arrow,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: titles.map(
              (e) {
                return TyperAnimatedText(
                  e,
                  textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                  speed: const Duration(
                    milliseconds: 100,
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
