import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/data/strategy/link_strategy.dart';
import 'package:portfolio/generated/l10n.dart';

class DownloadCvButton extends ConsumerWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () {
        LinkStrategy().open(
          context,
          ref.read(dataRepositoryProvider).getInfos(context).cvLink,
        );
      },
      child: Text(
        S.of(context).downloadCV,
      ),
    );
  }
}
