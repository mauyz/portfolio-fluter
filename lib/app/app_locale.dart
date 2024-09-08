import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_locale.g.dart';

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Locale? build() {
    return null;
  }

  void update(Locale value) {
    state = value;
  }
}
