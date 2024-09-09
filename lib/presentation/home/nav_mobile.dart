import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/presentation/common_widgets/logo_widget.dart';
import 'package:portfolio/presentation/home/navigation_item.dart';
import 'package:portfolio/presentation/home/provider/selected_menu.dart';

class NavMobile extends ConsumerWidget {
  final SelectedMenuProvider selectedMenuProvider;

  const NavMobile({
    super.key,
    required this.selectedMenuProvider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataRepository = ref.read(dataRepositoryProvider);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              child: Center(
                child: LogoWidget(),
              ),
            ),
            ...dataRepository.getMenu(context).map(
              (e) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: NavigationItem(
                    menu: e,
                    selectedMenuProvider: selectedMenuProvider,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
