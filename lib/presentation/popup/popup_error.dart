import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

void popupError(BuildContext context, String message) {
  if (!kIsWeb) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
        ),
        padding: const EdgeInsets.all(8.0),
      ),
    );
  } else {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            FilledButton.tonal(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(S.current.closeTitle),
            ),
          ],
        );
      },
    );
  }
}
