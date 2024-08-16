import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
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
            openWhatsApp(contact.values.first);
            break;
          case ContactType.mail:
            sendEmail(contact.values.first);
            break;
          case ContactType.link:
            openLink(contact.values.first);
            break;
        }
      },
      tooltip: contact.values.join("\n"),
    );
  }

  void openWhatsApp(String phoneNumber) async {
    phoneNumber = phoneNumber.replaceAll(" ", "");
    String text = '';
    String androidUrl = "whatsapp://send?phone=$phoneNumber&text=$text";
    String iosUrl = "https://wa.me/$phoneNumber?text=${Uri.parse(text)}";
    String webUrl =
        'https://api.whatsapp.com/send/?phone=$phoneNumber&text=$text&type=phone_number&app_absent=0';

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
    } catch (e) {
      debugPrint(e.toString());
      await launchUrl(Uri.parse(webUrl), mode: LaunchMode.externalApplication);
    }
  }

  void sendEmail(String email) async {
    final url =
        'mailto:$email?subject=${Uri.encodeFull("")}&body=${Uri.encodeFull("")}';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      /// TODO
    }
  }

  void openLink(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      /// TODO
    }
  }
}
