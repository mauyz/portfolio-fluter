import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/common_widgets/section_card.dart';
import 'package:portfolio/presentation/common_widgets/section_title_widget.dart';
import 'package:portfolio/presentation/skill/skill_base_list.dart';

class SkillSection extends ConsumerWidget {
  final Menu menu;
  SkillSection({
    required this.menu,
  }) : super(key: menu.key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRepos = ref.read(dataRepositoryProvider);
    return SectionCard(
      decorated: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              bottom: 30.0,
            ),
            child: SectionTitleWidget(menu: menu),
          ),
          Text(
            S.of(context).skilIntro,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Wrap(
            spacing: 40.0,
            runSpacing: 20.0,
            children: dataRepos.getSkills().map(
              (e) {
                return SkillBaseList(skill: e);
              },
            ).toList(),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
