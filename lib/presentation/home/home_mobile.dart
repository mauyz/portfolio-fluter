import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/presentation/about/about_section.dart';
import 'package:portfolio/presentation/contact/contact_section.dart';
import 'package:portfolio/presentation/experience/experience_section.dart';
import 'package:portfolio/presentation/footer/footer_page.dart';
import 'package:portfolio/presentation/home/nav_mobile.dart';
import 'package:portfolio/presentation/home/provider/controller_provider.dart';
import 'package:portfolio/presentation/home/provider/selected_menu.dart';
import 'package:portfolio/presentation/skill/skill_section.dart';

class HomeMobile extends ConsumerStatefulWidget {
  const HomeMobile({super.key});

  @override
  ConsumerState createState() => _HomeMobileState();
}

class _HomeMobileState extends ConsumerState<HomeMobile> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = ref.read(getPageControllerProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final selectedMenu = ref.read(selectedMenuProvider);
      if (selectedMenu.index != 0) {
        pageController?.jumpToPage(selectedMenu.index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final menu = ref.read(dataRepositoryProvider).getMenu();
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavMobile(),
      body: PageView.builder(
        controller: pageController,
        onPageChanged: _onPageChange,
        itemCount: menu.length,
        itemBuilder: (_, index) {
          return switch (index) {
            0 => const AboutSection(),
            1 => const SkillSection(),
            2 => const ExperienceSection(),
            _ => const SingleChildScrollView(
                child: Column(
                  children: [
                    ContactSection(),
                    FooterPage(),
                  ],
                ),
              ),
          };
        },
      ),
    );
  }

  void _onPageChange(int page) {
    final setMenu = ref.read(dataRepositoryProvider).getMenu();
    for (final menu in setMenu) {
      if (page == menu.index) {
        ref.read(selectedMenuProvider.notifier).update(menu);
        break;
      }
    }
  }
}
