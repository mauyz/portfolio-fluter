import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/home/avatar_widget.dart';
import 'package:portfolio/presentation/home/animated_job_title.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';
import 'package:portfolio/presentation/home/hello_world_widget.dart';
import 'package:portfolio/presentation/home/introduce_widget.dart';
import 'package:portfolio/presentation/home/welcome_widget.dart';

class HomeSection extends ConsumerWidget {
  final Menu menu;
  HomeSection({
    required this.menu,
  }) : super(key: menu.key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infos = ref.read(dataRepositoryProvider).getInfos();
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = ResponsiveWidget.isMobile(context)
        ? (MediaQuery.sizeOf(context).height - 60)
        : (MediaQuery.sizeOf(context).height - 80);
    return SizedBox(
      width: deviceWidth,
      height: deviceHeight,
      child: Stack(
        children: [
          Align(
            alignment: ResponsiveWidget.isMobile(context)
                ? Alignment.topCenter
                : Alignment.center,
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  if (ResponsiveWidget.isMobile(context))
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 50.0,
                      ),
                      child: SizedBox(
                        height: 400,
                        child: AvatarWidget(
                          image: infos.photo,
                        ),
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
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HelloWorldWidget(),
                              const SizedBox(
                                height: 15.0,
                              ),
                              IntroduceWidget(
                                firstName: infos.firstName,
                                name: infos.name,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              AnimatedJobTitle(
                                titles: infos.titles,
                              ),
                            ],
                          ),
                        ),
                        if (!ResponsiveWidget.isMobile(context)) ...[
                          const Spacer(),
                          Expanded(
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
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: WelcomeWidget(),
          )
        ],
      ),
    );
  }
}
