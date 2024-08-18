import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/career_item_indicator.dart';
import 'package:portfolio/presentation/career/school/school_content_widget.dart';

class SchoolItemMobile extends StatelessWidget {
  final Formation formation;
  final bool isLast;

  const SchoolItemMobile({
    super.key,
    required this.formation,
    required this.isLast,
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
            const CareerKeyIndicator(
              icon: Icons.school,
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: SchoolContentWidget(
              formation: formation,
              isLast: isLast,
            ),
          ),
        ),
      ],
    );
  }
}
