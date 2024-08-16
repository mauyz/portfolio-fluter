import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/about/about_image_widget.dart';
import 'package:portfolio/presentation/about/bio_widget.dart';
import 'package:portfolio/presentation/about/contacts_widget.dart';
import 'package:portfolio/presentation/common_widgets/section_card.dart';
import 'package:portfolio/presentation/common_widgets/section_title_widget.dart';
import 'package:portfolio/presentation/about/intro_widget.dart';
import 'package:portfolio/presentation/about/job_title_widget.dart';
import 'package:portfolio/presentation/about/who_widget.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';

class AboutSection extends ConsumerWidget {
  final Menu menu;
  AboutSection({
    required this.menu,
  }) : super(key: menu.key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infos = ref.read(dataRepositoryProvider).getInfos();
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: SectionTitleWidget(menu: menu),
          ),
          if (!ResponsiveWidget.isDesktop(context)) ...[
            const AboutImageWidget(),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: WhoWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IntroWidget(
                name: '${infos.firstName} ${infos.name}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    ">",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  JobTitleWidget(
                    titles: infos.titles,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: BioWidget(text: infos.bio),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ContactsWidget(contacts: infos.contacts),
            )
          ] else
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15.0,
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    const Expanded(
                      child: Row(
                        children: [
                          AboutImageWidget(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const WhoWidget(),
                            const SizedBox(
                              height: 20,
                            ),
                            IntroWidget(
                              name: '${infos.firstName} ${infos.name}',
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  ">",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                JobTitleWidget(
                                  titles: infos.titles,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            BioWidget(text: infos.bio),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ContactsWidget(contacts: infos.contacts),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
