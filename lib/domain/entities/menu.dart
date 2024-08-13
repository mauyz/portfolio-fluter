import 'package:flutter/cupertino.dart';

class Menu {
  final int index;
  final IconData icon;
  final String title;
  final GlobalKey key;

  Menu({
    required this.index,
    required this.icon,
    required this.title,
    required this.key,
  });
}
