import 'package:flutter/material.dart';

class CareerKeyIndicator extends StatelessWidget {
  final IconData icon;
  const CareerKeyIndicator({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary,
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          width: 3.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon
        ),
      ),
    );
  }
}
