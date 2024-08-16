import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/domain/entities/infos.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:unicons/unicons.dart';

final phone = Contact(
  icon: Icons.call,
  values: [
    "+261 34 90 637 88 ",
    "+261 32 92 037 67",
  ],
);

final mail = Contact(
  icon: Icons.mail,
  values: [
    "tsiorymauyz@gmail.com",
  ],
);

final linkedIn = Contact(
  icon: UniconsLine.linkedin,
  values: [
    "www.linkedin.com/in/moise-tsiorinambinina",
  ],
);

final github = Contact(
  icon: UniconsLine.github,
  values: [
    "https://github.com/mauyz",
  ],
);

final infos = Infos(
  photo: "assets/images/mauyz_resized.jpg",
  name: "Tsiorinambinina",
  firstName: "Moïse",
  titles: [
    S.current.softwareIng,
    S.current.devMobileTitle,
    S.current.passionnateTech
  ],
  bio: S.current.bioContent,
  contacts: {
    phone,
    mail,
    linkedIn,
    github,
  },
);
