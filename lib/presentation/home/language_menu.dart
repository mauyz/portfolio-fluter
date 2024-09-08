import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/app/app_locale.dart';
import 'package:portfolio/generated/l10n.dart';

class LanguageMenu extends ConsumerWidget {
  const LanguageMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: DropdownButton<Locale>(
        value: Localizations.localeOf(context),
        iconEnabledColor: Theme.of(context).colorScheme.error,
        items: S.delegate.supportedLocales.reversed.map(
          (e) {
            return DropdownMenuItem<Locale>(
              value: e,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/images/${e.languageCode}.svg',
                    height: 16,
                    width: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    child: Text(
                      e.languageCode.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ],
              ),
            );
          },
        ).toList(),
        onChanged: (value) {
          final currentLocale = ref.read(appLocaleProvider);
          if (value != null && value != currentLocale) {
            ref.read(appLocaleProvider.notifier).update(value);
          }
        },
      ),
    );
  }
}
