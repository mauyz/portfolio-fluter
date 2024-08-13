import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_scroll_controller.g.dart';

@Riverpod(keepAlive: true)
ScrollController getScrollController(GetScrollControllerRef ref) {
  return ScrollController();
}