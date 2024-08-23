import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/career_item_indicator.dart';
import 'package:portfolio/presentation/career/school/school_content_widget.dart';

class SchoolItemWidget extends StatelessWidget {
  final Formation formation;
  final bool isDesktop;
  final bool isPairIndex;

  const SchoolItemWidget({
    super.key,
    required this.formation,
    required this.isDesktop,
    required this.isPairIndex,
  });

  @override
  Widget build(BuildContext context) {
    final itemContentWidgets = [
      if (isDesktop)
        const Expanded(
          child: SizedBox.shrink(),
        ),
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
            isPairIndex: isPairIndex,
          ),
        ),
      ),
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: isPairIndex
          ? itemContentWidgets.reversed.toList()
          : itemContentWidgets,
    );
  }
}
