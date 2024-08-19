import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/skill_category.dart';
import 'package:portfolio/presentation/career/career_category_title.dart';
import 'package:portfolio/presentation/skill/skill_card.dart';

class SkillBaseList extends StatelessWidget {
  final SkillCategory skill;
  const SkillBaseList({
    super.key,
    required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CareerCategoryTitle(
          title: skill.category,
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: skill.list.map(
                    (e) {
                  return SkillCard(
                    skill: e,
                  );
                },
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}
