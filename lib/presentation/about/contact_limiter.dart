import 'package:flutter/material.dart';

class ContactLimiter extends StatelessWidget {
  const ContactLimiter({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: const SizedBox(
        width: 100,
        height: 1,
      ),
    );
  }
}
