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
      S.of(context).passionnateTech
    ],
    cvLink: currentLanguageCode == "fr"
        ? "https://drive.google.com/file/d/1p7o2lF3p7SPBT6XIhu0Aee1LxOnd5Kbb"
            "/view?usp=sharing"
        : "https://drive.google.com/file/d/1GqmEcq5uKQxB2VxhU4liRW00L8LmGFKi"
            "/view?usp=sharing",
    bio: S.of(context).bioContent,
    contacts: {
      phone,
      mail,
      linkedIn,
      skype,
    },
  );
}
