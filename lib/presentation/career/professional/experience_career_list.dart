import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/career/career_category_title.dart';
import 'package:portfolio/presentation/career/career_item_widget.dart';
import 'package:portfolio/presentation/career/professional/experience_content_widget.dart';

class ExperienceCareerList extends ConsumerWidget {
  const ExperienceCareerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listExperience = ref.read(dataRepositoryProvider).getExperience();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CareerCategoryTitle(
          title: S.current.professionalTitle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        LayoutBuilder(
          builder: (_, __) {
            return IntrinsicWidth(
              child: Column(
                children: listExperience.indexed.map(
                  (e) {
                    return IntrinsicHeight(
                      child: CareerItemWidget(
                        icon: Icons.work,
                        content: ExperienceContentWidget(
                          experience: e.$2,
                          isLast: e.$1 == (listExperience.length - 1),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
