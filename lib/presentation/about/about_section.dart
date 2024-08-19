import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/about/about_image_widget.dart';
import 'package:portfolio/presentation/about/bio_widget.dart';
import 'package:portfolio/presentation/about/contacts_widget.dart';
import 'package:portfolio/presentation/about/download_cv_button.dart';
import 'package:portfolio/presentation/about/job_titles_widget.dart';
import 'package:portfolio/presentation/common_widgets/section_card.dart';
import 'package:portfolio/presentation/common_widgets/section_title_widget.dart';
import 'package:portfolio/presentation/about/intro_widget.dart';
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
      decorated: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: ResponsiveWidget.isMobile(context) ? 20.0 : 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
            ),
            child: SectionTitleWidget(menu: menu),
          ),
          if (!ResponsiveWidget.isDesktop(context)) ...[
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: WhoWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IntroWidget(
                          firstName: infos.firstName,
                          name: infos.name,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: JobTitlesWidget(
                          titles: infos.titles,
                        ),
                      ),
                    ],
                  ),
                ),
                //if (!ResponsiveWidget.isMobile(context))
                const Expanded(
                  child: SizedBox(
                    height: 200,
                    child: AboutImageWidget(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: BioWidget(text: infos.bio),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ContactsWidget(
                contacts: infos.contacts,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
          ] else
            Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const WhoWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        IntroWidget(
                          firstName: infos.firstName,
                          name: infos.name,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        JobTitlesWidget(
                          titles: infos.titles,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        BioWidget(text: infos.bio),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const DownloadCvButton(),
                        const SizedBox(
                          height: 50.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: AboutImageWidget(),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
