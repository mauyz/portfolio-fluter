import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/presentation/common_widgets/logo_widget.dart';
import 'package:portfolio/presentation/common_widgets/theme_switcher.dart';
import 'package:portfolio/presentation/home/navigation_item.dart';

class NavDesktop extends ConsumerWidget {

  const NavDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRepository = ref.read(dataRepositoryProvider);
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const LogoWidget(),
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
          const ThemeSwitcher(),
        ],
      ),
    );
  }
}
