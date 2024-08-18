import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/about/contact_limiter.dart';
import 'package:unicons/unicons.dart';

class WelcomeWidget extends ConsumerWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Flexible(
          child: ContactLimiter(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            S.current.welcomeTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: IconButton.filledTonal(
            iconSize: 48.0,
            onPressed: () {
              final menuAboutContext = ref
                  .read(dataRepositoryProvider)
                  .getMenu()
                  .elementAt(1)
                  .key
                  .currentContext;
              if (menuAboutContext != null) {
                Scrollable.ensureVisible(
                  menuAboutContext,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOut,
                );
              }
            },
            icon: const Icon(
              UniconsLine.angle_double_down,
            ),
          ),
        ),
        const Flexible(
          child: ContactLimiter(),
        ),
      ],
    );
  }
}
