import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/generated/l10n.dart';

Set<Menu> getMenuList(BuildContext context) {
  return {
    Menu(
      index: 0,
      icon: Icons.home,
      title: S.of(context).home,
      key: menuKeys[0],
    ),
    Menu(
      index: 1,
      icon: Icons.info,
      title: S.of(context).aboutTitle,
      key: menuKeys[1],
    ),
    Menu(
      index: 2,
      icon: Icons.work_history,
      title: S.of(context).parcourTitle,
      key: menuKeys[2],
    ),
    Menu(
      index: 3,
      icon: Icons.ac_unit,
      title: S.of(context).skillTitle,
      key: menuKeys[3],
    ),
    Menu(
      index: 4,
      icon: Icons.computer,
      title: S.of(context).projectTitle,
      key: menuKeys[4],
    ),
  };
}

final menuKeys = List.unmodifiable([
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
]);
