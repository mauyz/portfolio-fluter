import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/common_widgets/logo_widget.dart';
import 'package:portfolio/presentation/common_widgets/theme_switcher.dart';
import 'package:portfolio/presentation/home/navigation_item.dart';

class NavDesktop extends ConsumerWidget {
  final Function() navigateToContact;
  const NavDesktop({
    super.key,
    required this.navigateToContact,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRepository = ref.read(dataRepositoryProvider);
    return Container(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              final homeMenuContext =
                  dataRepository.getMenu().elementAt(0).key.currentContext;
              if (homeMenuContext != null) {
                Scrollable.ensureVisible(
                  homeMenuContext,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOut,
                );
              }
            },
            child: const LogoWidget(),
          ),
          const Spacer(),
          ...dataRepository.getMenu().map(
            (e) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: NavigationItem(
                  menu: e,
                ),
              );
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              onPressed: navigateToContact,
              child: Text(
                S.current.contactTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const ThemeSwitcher(),
        ],
      ),
    );
  }
}
