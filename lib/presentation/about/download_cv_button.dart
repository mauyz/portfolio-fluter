import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';

class DownloadCvButton extends ConsumerWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () {
        openLink(
          context,
          ref.read(dataRepositoryProvider).getInfos().cvLink,
        );
      },
      child: Text(
        S.of(context).downloadCV,
      ),
    );
  }
}
