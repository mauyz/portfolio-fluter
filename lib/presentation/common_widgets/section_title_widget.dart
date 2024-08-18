import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/menu.dart';

class SectionTitleWidget extends StatelessWidget {
  final Menu menu;
  const SectionTitleWidget({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    final children = <TextSpan>[];
    for (final char in menu.title.characters) {
      children.add(
        TextSpan(
          text: char,
          style: TextStyle.lerp(
            Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
            Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
            children.length / menu.title.length,
          ),
        ),
      );
    }
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Icon(
            menu.icon,
            size: 36.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: RichText(
            text: TextSpan(
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}