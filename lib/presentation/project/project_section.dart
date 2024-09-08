import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/common_widgets/section_card.dart';
import 'package:portfolio/presentation/common_widgets/section_title_widget.dart';
import 'package:portfolio/presentation/project/github_intro.dart';
import 'package:portfolio/presentation/project/project_card.dart';

class ProjectSection extends ConsumerWidget {
  final Menu menu;
  ProjectSection({
    required this.menu,
  }) : super(key: menu.key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.read(dataRepositoryProvider).getProjects(context);
    final gridAxisCount = calculateGridAxisCount(context);
    return SectionCard(
      decorated: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              bottom: 20.0,
            ),
            child: SectionTitleWidget(menu: menu),
          ),
          Text(
            S.of(context).projectIntro,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 10),

          const GithubIntro(),
          const SizedBox(height: 10),
          Text(
            S.of(context).projectListIntro,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 30.0,
          ),
          gridAxisCount == 1
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    return ProjectCard(
                      project: projects.elementAt(index),
                    );
                  },
                )
              : GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: gridAxisCount,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                  ),
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    return ProjectCard(
                      project: projects.elementAt(index),
                    );
                  },
                ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  int calculateGridAxisCount(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    if (deviceWidth >= 1920) {
      return 3;
    } else if (deviceWidth >= 1440 && deviceWidth < 1920) {
      return 2;
    }
    return 1;
  }
}
