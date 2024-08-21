import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/generated/l10n.dart';

final menu = {
  Menu(
    index: 0,
    icon: Icons.home,
    title: S.current.home,
    key: GlobalKey(),
  ),
  Menu(
    index: 1,
    icon: Icons.info,
    title: S.current.aboutTitle,
    key: GlobalKey(),
  ),
  Menu(
    index: 2,
    icon: Icons.work_history,
    title: S.current.parcourTitle,
    key: GlobalKey(),
  ),
  Menu(
    index: 3,
    icon: Icons.ac_unit,
    title: S.current.skillTitle,
    key: GlobalKey(),
  ),
  Menu(
    index: 4,
    icon: Icons.computer,
    title: S.current.projectTitle,
    key: GlobalKey(),
  ),
};
