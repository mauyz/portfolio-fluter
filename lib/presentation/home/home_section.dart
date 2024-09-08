import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/home/animated_welcome.dart';
import 'package:portfolio/presentation/home/avatar_widget.dart';
import 'package:portfolio/presentation/home/animated_job_title.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';
import 'package:portfolio/presentation/home/hello_world_widget.dart';
import 'package:portfolio/presentation/home/introduce_widget.dart';

class HomeSection extends ConsumerWidget {
  final Menu menu;
  HomeSection({
    required this.menu,
  }) : super(key: menu.key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infos = ref.read(dataRepositoryProvider).getInfos(context);
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height - 120;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: deviceWidth,
        minHeight: deviceHeight,
      ),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Align(
              alignment: ResponsiveWidget.isMobile(context)
                  ? Alignment.topCenter
                  : Alignment.center,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  if (ResponsiveWidget.isMobile(context))
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AvatarWidget(
                        image: infos.photo,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(
                      ResponsiveWidget.isMobile(context) ? 20.0 : 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: ResponsiveWidget.isMobile(context)
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: ResponsiveWidget.isMobile(context) ? 1 : 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HelloWorldWidget(),
                              const SizedBox(
                                height: 30.0,
                              ),
                              IntroduceWidget(
                                firstName: infos.firstName,
                                name: infos.name,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              AnimatedJobTitle(
                                titles: infos.titles,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              const AnimatedWelcome(),
                            ],
                          ),
                        ),
                        if (!ResponsiveWidget.isMobile(context)) ...[
                          Flexible(
                            flex: 2,
                            child: AvatarWidget(
                              image: infos.photo,
                            ),
                          ),
                          const Spacer(),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
