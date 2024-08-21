import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/presentation/career/career_item_indicator.dart';
import 'package:portfolio/presentation/career/professional/experience_content_widget.dart';

class ExperienceItemWidget extends StatelessWidget {
  final Experience experience;
  final bool isDesktop;
  final bool isPairIndex;
  final bool isLastIndex;

  const ExperienceItemWidget({
    super.key,
    required this.experience,
    required this.isDesktop,
    required this.isPairIndex,
    required this.isLastIndex,
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
            icon: Icons.work,
          ),
        ],
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: ExperienceContentWidget(
            experience: experience,
            isLastIndex: isLastIndex,
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
