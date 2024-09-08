import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/about/about_section.dart';
import 'package:portfolio/presentation/common_widgets/theme_switcher.dart';
import 'package:portfolio/presentation/home/contacts_widget.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';
import 'package:portfolio/presentation/home/language_menu.dart';
import 'package:portfolio/presentation/project/project_section.dart';
import 'package:portfolio/presentation/career/career_section.dart';
import 'package:portfolio/presentation/footer/footer_section.dart';
import 'package:portfolio/presentation/home/home_section.dart';
import 'package:portfolio/presentation/home/nav_desktop.dart';
import 'package:portfolio/presentation/home/nav_mobile.dart';
import 'package:portfolio/presentation/home/provider/scroll_controller_offset.dart';
import 'package:portfolio/presentation/home/provider/selected_menu.dart';
import 'package:portfolio/presentation/skill/skill_section.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends ConsumerState<HomePage> {
  late ScrollController scrollController;
  final footerKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    final scrollOffset = ref.read(scrollControllerOffsetProvider);
    scrollController = ScrollController(initialScrollOffset: scrollOffset);
    scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final menu = ref.refresh(dataRepositoryProvider).getMenu(context);
    final isMobile = ResponsiveWidget.isMobile(context);
    return Scaffold(
      appBar: isMobile
          ? AppBar(
              backgroundColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.1),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextButton(
                    onPressed: _navigateToContacts,
                    child: Text(
                      S.current.contactTitle,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 5.0,
                  ),
                  child: LanguageMenu(),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: ThemeSwitcher(),
                ),
              ],
            )
          : null,
      drawer: isMobile
          ? NavMobile(
              navigateToContact: _navigateToContacts,
            )
          : null,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isMobile)
            NavDesktop(
              navigateToContact: _navigateToContacts,
            ),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              controller: scrollController,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
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
                          2 => CareerSection(
                              menu: menu.elementAt(e.index),
                            ),
                          3 => SkillSection(
                              menu: menu.elementAt(e.index),
                            ),
                          _ => ProjectSection(
                              menu: menu.elementAt(e.index),
                            ),
                        };
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    FooterSection(key: footerKey),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Container(
          alignment: Alignment.centerRight,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(
            vertical: 2.0,
            horizontal: 5.0,
          ),
          child: ContactsWidget(
            contacts:
                ref.read(dataRepositoryProvider).getInfos(context).contacts,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final setMenu = ref.read(dataRepositoryProvider).getMenu(context);
    for (final menu in setMenu) {
      final keyContext = menu.key.currentContext;
      if (keyContext != null) {
        final box = keyContext.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        // Check if the widget is within the visible screen area
        if (position.dy >= 0 &&
            position.dy <= MediaQuery.sizeOf(context).height) {
          ref.read(selectedMenuProvider(context).notifier).update(menu);
          break;
        }
      }
    }
    if (scrollController.hasClients) {
      ref
          .read(scrollControllerOffsetProvider.notifier)
          .update(scrollController.offset);
    }
  }

  void _navigateToContacts() {
    if (scrollController.hasClients) {
      Scrollable.ensureVisible(
        footerKey.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }
}
