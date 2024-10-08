import 'package:flutter/cupertino.dart';
import 'package:portfolio/domain/strategy/contact_strategy.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/popup/popup_error.dart';
import 'package:url_launcher/url_launcher.dart';

class SkypeStrategy implements ContactStrategy {
  @override
  void open(BuildContext context, String url) async {
    final uri = Uri.parse('skype:$url?call');
    try {
      await launchUrl(uri);
    } catch (_) {
      if (context.mounted) {
        popupError(
          context,
          S.current.cantOpenContactError("Skype"),
        );
      }
    }
  }
}
