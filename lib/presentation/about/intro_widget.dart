import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class IntroWidget extends StatelessWidget {
  final String firstName;
  final String name;
  const IntroWidget({
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
            text: S.current.introContent,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TextSpan(
            text: " $firstName",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
          TextSpan(
            text: " $name.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
