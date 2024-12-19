import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/generated/l10n.dart';

Set<Menu> getMenuList() {
  return {
    Menu(
      index: 0,
      icon: Icons.home,
      title: S.current.home,
      key: menuKeys[0],
    ),
    Menu(
      index: 1,
      icon: Icons.info,
      title: S.current.aboutTitle,
      key: menuKeys[1],
    ),
    Menu(
      index: 2,
      icon: Icons.work_history,
      title: S.current.parcourTitle,
      key: menuKeys[2],
    ),
    Menu(
      index: 3,
      icon: Icons.ac_unit,
      title: S.current.skillTitle,
      key: menuKeys[3],
    ),
    Menu(
      index: 4,
      icon: Icons.computer,
      title: S.current.projectTitle,
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
