import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/home/avatar_widget.dart';
import 'package:portfolio/presentation/about/job_title_widget.dart';
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
        : (MediaQuery.sizeOf(context).height - 100);
    return SizedBox(
      width: deviceWidth,
      height: deviceHeight,
      child: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Wrap(
                children: [
                  if (ResponsiveWidget.isMobile(context)) ...[
                    Center(
                      child: AvatarWidget(
                        image: infos.photo,
                      ),
                    )
                  ],
                  Row(
                    mainAxisAlignment: ResponsiveWidget.isMobile(context)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HelloWorldWidget(),
                          const SizedBox(
                            height: 50.0,
                          ),
                          IntroduceWidget(
                            name: "${infos.firstName} ${infos.name}",
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          JobTitleWidget(titles: infos.titles),
                        ],
                      ),
                      if (!ResponsiveWidget.isMobile(context))
                        Flexible(
                          child: AvatarWidget(
                            image: infos.photo,
                          ),
                        ),
                    ],
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
