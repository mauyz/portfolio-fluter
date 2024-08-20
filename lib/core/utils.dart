import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/popup/popup_error.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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