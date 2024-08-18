import 'package:flutter/material.dart';
import 'package:portfolio/presentation/career/career_item_indicator.dart';

class CareerItemWidget extends StatelessWidget {
  final Widget content;
  final IconData icon;

  const CareerItemWidget({
    super.key,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned.fill(
              child: VerticalDivider(
                color: Theme.of(context).colorScheme.error,
                thickness: 5.0,
              ),
            ),
            CareerKeyIndicator(
              icon: icon,
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: content,
          ),
        ),
      ],
    );
  }
}
