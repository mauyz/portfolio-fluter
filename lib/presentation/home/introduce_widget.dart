import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class IntroduceWidget extends StatelessWidget {
  final String firstName;
  final String name;
  const IntroduceWidget({
    super.key,
    required this.name,
    required this.firstName,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.current.iam,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextSpan(
            text: " $firstName",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
          TextSpan(
            text: " $name.",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
