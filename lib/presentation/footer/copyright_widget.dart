import 'package:flutter/material.dart';

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "© ${DateTime.now().year} Moïse T.",
      style: Theme.of(context).textTheme.labelMedium,
      textAlign: TextAlign.end,
    );
  }
}
