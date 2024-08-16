import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class IntroWidget extends StatelessWidget {
  final String name;
  const IntroWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.current.introContent,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextSpan(
            text: " $name",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          )
        ],
      ),
    );
  }
}
