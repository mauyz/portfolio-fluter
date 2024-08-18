import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/school/school_content_widget.dart';
import 'package:portfolio/presentation/career/career_item_indicator.dart';

class SchoolItemDesktop extends StatelessWidget {
  final Formation formation;
  final bool isIndexPair;
  final bool isLast;
  const SchoolItemDesktop({
    super.key,
    required this.formation,
    required this.isIndexPair,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final listWidget = [
      const Spacer(),
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: isIndexPair
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SchoolContentWidget(
                  formation: formation,
                  isIndexPair: isIndexPair,
                  isLast: isLast,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: isIndexPair ? listWidget.reversed.toList() : listWidget,
    );
  }
}
