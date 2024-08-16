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
    icon: Icons.info_outline,
    title: S.current.aboutTitle,
    key: GlobalKey(),
  ),
  Menu(
    index: 2,
    icon: Icons.computer,
    title: S.current.techTitle,
    key: GlobalKey(),
  ),
  Menu(
    index: 3,
    icon: Icons.info_outline,
    title: S.current.experienceTitle,
    key: GlobalKey(),
  ),
  Menu(
    index: 4,
    icon: Icons.contact_mail,
    title: S.current.contactTitle,
    key: GlobalKey(),
  ),
};
