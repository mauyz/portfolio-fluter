import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Text(
        S.of(context).downloadCV,
      ),
    );
  }
}
