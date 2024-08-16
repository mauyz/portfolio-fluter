import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class IntroduceWidget extends StatelessWidget {
  final String name;
  const IntroduceWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.current.iam,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          TextSpan(
            text: " $name,",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          )
        ],
      ),
    );
  }
}
