import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/presentation/common_widgets/logo_widget.dart';
import 'package:portfolio/presentation/home/navigation_item.dart';

class NavMobile extends ConsumerWidget {
  final Function() navigateToContact;
  const NavMobile({
    super.key,
    required this.navigateToContact,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRepository = ref.read(dataRepositoryProvider);
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DrawerHeader(
            child: LogoWidget(),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                ...dataRepository.getMenu(context).map(
                  (e) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: NavigationItem(menu: e),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
