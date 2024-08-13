import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'controller_provider.g.dart';

@Riverpod(keepAlive: true)
ScrollController getScrollController(GetScrollControllerRef ref) {
  return ScrollController();
}

@Riverpod(keepAlive: true)
PageController getPageController(GetPageControllerRef ref) {
 return PageController();
}