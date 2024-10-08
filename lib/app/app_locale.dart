import 'package:flutter/material.dart';
import 'package:portfolio/app/shared_preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_locale.g.dart';

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Locale? build() {
    final languageCode =
        ref.read(sharedPreferencesProvider)?.getString("languageCode");
    return languageCode == null
        ? null
        : Locale.fromSubtags(languageCode: languageCode);
  }

  void update(Locale value) {
    ref.read(sharedPreferencesProvider)?.setString(
          "languageCode",
          value.languageCode,
        );
    state = value;
  }
}
