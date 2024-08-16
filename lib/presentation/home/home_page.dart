import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/presentation/about/about_section.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';
import 'package:portfolio/presentation/contact/contact_section.dart';
import 'package:portfolio/presentation/experience/experience_section.dart';
import 'package:portfolio/presentation/footer/footer_page.dart';
import 'package:portfolio/presentation/home/home_section.dart';
import 'package:portfolio/presentation/home/nav_desktop.dart';
import 'package:portfolio/presentation/home/nav_mobile.dart';
import 'package:portfolio/presentation/home/provider/page_scroll_controller.dart';
import 'package:portfolio/presentation/home/provider/selected_menu.dart';
import 'package:portfolio/presentation/skill/skill_section.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends ConsumerState<HomePage> {
  ScrollController? scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ref.read(getScrollControllerProvider);
    scrollController?.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final selectedMenu = ref.read(selectedMenuProvider);
      if (selectedMenu.index != 0) {
        Scrollable.ensureVisible(
          selectedMenu.key.currentContext!,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final menu = ref.read(dataRepositoryProvider).getMenu();
    final isMobile = ResponsiveWidget.isMobile(context);
    return Scaffold(
      appBar: isMobile ? AppBar() : null,
      drawer: isMobile ? const NavMobile() : null,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bvb4.jpg",
            ),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!isMobile) const NavDesktop(),
            Expanded(
              child: Scrollbar(
                thumbVisibility: true,
                controller: scrollController,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 8.0 : 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ...menu.map(
                          (e) {
                            return switch (e.index) {
                              0 => HomeSection(
                                  menu: menu.elementAt(e.index),
                                ),
                              1 => AboutSection(
                                  menu: menu.elementAt(e.index),
                                ),
                              2 => SkillSection(
                                  menu: menu.elementAt(e.index),
                                ),
                              3 => ExperienceSection(
                                  menu: menu.elementAt(e.index),
                                ),
                              _ => ContactSection(
                                  menu: menu.elementAt(e.index),
                                ),
                            };
                          },
                        ),
                        const FooterPage(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController?.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    final setMenu = ref.read(dataRepositoryProvider).getMenu();
    for (final menu in setMenu) {
      final keyContext = menu.key.currentContext;
      if (keyContext != null) {
        final box = keyContext.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        // Check if the widget is within the visible screen area
        if (position.dy >= 0 &&
            position.dy <= MediaQuery.sizeOf(context).height) {
          ref.read(selectedMenuProvider.notifier).update(menu);
          break;
        }
      }
    }
  }
}
