import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/domain/strategy/contact_strategy.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/popup/popup_error.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappStrategy implements ContactStrategy {
  @override
  void open(BuildContext context, String url) async {
    String phoneNumber = url.replaceAll(" ", "").replaceAll("+", "");
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
}
