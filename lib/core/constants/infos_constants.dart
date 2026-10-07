import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/constants/contact_constants.dart';
import 'package:portfolio/domain/entities/infos.dart';
import 'package:portfolio/generated/l10n.dart';

Infos getInfosData(BuildContext context) {
  final currentLanguageCode = Localizations.localeOf(context).languageCode;
  return Infos(
    photo: "assets/images/mauyz_resized.jpg",
    name: "Tsiorinambinina",
    firstName: "Moïse",
    titles: [
      S.of(context).softwareIng,
      S.of(context).devMobileTitle,
      S.of(context).passionateTech
    ],
    cvLink: currentLanguageCode == "fr"
        ? "https://drive.google.com/file/d/1UftfOyznclp3W27f1dnUihO5XsXQ2V0m"
        "/view?usp=drive_link"
        : "https://drive.google.com/file/d/1yW9ckvB-ck4kWOLg5YZSKwnxqaFptTPN"
        "/view?usp=drive_link",
    bio: S.of(context).bioContent,
    contacts: {
      phone,
      mail,
      linkedIn
    },
  );
}
