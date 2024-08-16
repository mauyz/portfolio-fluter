import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';
import 'package:portfolio/presentation/home/provider/selected_menu.dart';

class NavigationItem extends ConsumerWidget {
  final Menu menu;

  const NavigationItem({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = ResponsiveWidget.isMobile(context);
    final children = <TextSpan>[];
    for (final char in menu.title.characters) {
      children.add(
        TextSpan(
          text: char,
          style: TextStyle.lerp(
            Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
            Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
            children.length / menu.title.length,
          ),
        ),
      );
    }
    final title = RichText(
      text: TextSpan(
        children: children,
      ),
    );
    final selectedMenu = ref.watch(selectedMenuProvider);
    final selected = selectedMenu.index == menu.index;
    onTapMenu () {
      Scrollable.ensureVisible(
        menu.key.currentContext!,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    }
    return isMobile
        ? ListTile(
            selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(
                  100.0,
                ),
              ),
            ),
            leading: Icon(menu.icon),
            title: title,
            selected: selected,
            onTap: () {
              Navigator.of(context).pop();
              onTapMenu();
            },
          )
        : TextButton(
            style: selected
                ? ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Theme.of(context).colorScheme.primaryContainer,
                    ), // Set your desired background color
                  )
                : null,
            onPressed: onTapMenu,
            child: title,
          );
  }
}
