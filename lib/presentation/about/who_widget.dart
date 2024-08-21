import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class WhoWidget extends StatelessWidget {
  const WhoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.current.whoIam,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
