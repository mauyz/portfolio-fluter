import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/popup/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactWidget extends StatelessWidget {
  final Contact contact;

  const ContactWidget({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      iconSize: 36.0,
      color: Theme.of(context).colorScheme.error,
      icon: Icon(
        contact.icon,
      ),
      splashColor: Theme.of(context).colorScheme.error,
      splashRadius: 12.0,
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
      tooltip: contact.values.join("\n"),
    );
  }

  void openWhatsApp(BuildContext context, String phoneNumber) async {
    phoneNumber = phoneNumber.replaceAll(" ", "").replaceAll("+", "");
    String text = '';
    String androidUrl = "whatsapp://send?phone=$phoneNumber&text=$text";
    String iosUrl = "https://wa.me/$phoneNumber?text=${Uri.parse(text)}";
    String webUrl =
        'https://api.whatsapp.com/send/?phone=$phoneNumber&text=$text&type='
        'phone_number&app_absent=0';

    try {
      if (Platform.isIOS) {
        if (await canLaunchUrl(Uri.parse(iosUrl))) {
          await launchUrl(Uri.parse(iosUrl));
        }
      } else {
        if (await canLaunchUrl(Uri.parse(androidUrl))) {
          await launchUrl(Uri.parse(androidUrl));
        }
      }
    } catch (_) {
      try {
        await launchUrl(
          Uri.parse(webUrl),
          mode: LaunchMode.externalApplication,
        );
      } catch (_) {
        if (context.mounted) {
          popupError(
            context,
            S.current.cantOpenContactError("Whatsapp"),
          );
        }
      }
    }
  }

  void sendEmail(BuildContext context, String email) async {
    final uri = Uri.parse(
      'mailto:$email?subject=${Uri.encodeFull("")}&body=${Uri.encodeFull("")}',
    );
    try {
      await launchUrl(uri);
    } catch (_) {
      if (context.mounted) {
        popupError(
          context,
          S.current.cantOpenContactError(S.current.Mailaddress),
        );
      }
    }
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

  void openLink(BuildContext context, String url) async {
    try {
      await launchUrlString(url);
    } catch (_) {
      if (context.mounted) {
        popupError(
          context,
          S.current.cantOpenContactError(S.current.linkTitle),
        );
      }
    }
  }
}
