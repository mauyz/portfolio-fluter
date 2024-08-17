import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final bool decorated;
  final Widget child;
  const SectionCard({
    super.key,
    required this.decorated,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      decoration: decorated
          ? BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Theme.of(context).colorScheme.inversePrimary,
                  Theme.of(context).colorScheme.onInverseSurface,
                ],
              ),
            )
          : null,
      child: child,
    );
  }
}
