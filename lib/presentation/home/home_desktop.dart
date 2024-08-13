import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/presentation/about/about_section.dart';
import 'package:portfolio/presentation/contact/contact_section.dart';
import 'package:portfolio/presentation/experience/experience_section.dart';
import 'package:portfolio/presentation/footer/footer_page.dart';
import 'package:portfolio/presentation/home/nav_desktop.dart';
import 'package:portfolio/presentation/home/provider/controller_provider.dart';
import 'package:portfolio/presentation/home/provider/selected_menu.dart';
import 'package:portfolio/presentation/skill/skill_section.dart';

class HomeDesktop extends ConsumerStatefulWidget {
  const HomeDesktop({super.key});

  @override
  ConsumerState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends ConsumerState<HomeDesktop> {
  ScrollController? scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ref.read(getPageControllerProvider);
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const NavDesktop(),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AboutSection(key: menu.elementAt(0).key),
                    SkillSection(key: menu.elementAt(1).key),
                    ExperienceSection(key: menu.elementAt(2).key),
                    ContactSection(key: menu.elementAt(3).key),
                    const FooterPage(),
                  ],
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
