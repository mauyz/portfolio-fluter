import 'package:flutter/material.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/popup/popup_error.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatelessWidget {
  final Contact contact;

  const ContactWidget({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 24.0,
      color: Theme.of(context).colorScheme.error,
      icon: Icon(
        contact.icon,
      ),
      onPressed: () {
        switch (contact.type) {
          case ContactType.phone:
            openWhatsApp(context, contact.values.first);
            break;
          case ContactType.mail:
            sendEmail(context, contact.values.first);
            break;
          case ContactType.skype:
            openSkype(context, contact.values.first);
            break;
          case ContactType.link:
            openLink(context, contact.values.first);
            break;
        }
      },
      tooltip: contact.values.elementAt(0),
    );
  }

  void openSkype(BuildContext context, String skypeId) async {
    final uri = Uri.parse('skype:$skypeId?call');
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
