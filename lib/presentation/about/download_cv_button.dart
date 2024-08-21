import 'package:flutter/material.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/generated/l10n.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        openLink(
          context,
          "https://drive.google.com/file/d/1j5aKPyWQJNT2_7a-JtnJrDBdHzZ1Gh4M/view?usp=sharing",
        );
      },
      child: Text(
        S.of(context).downloadCV,
      ),
    );
  }
}
