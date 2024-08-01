import 'package:flutter/material.dart';
import 'package:portfolio/domain/contact.dart';
import 'package:portfolio/domain/infos.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:unicons/unicons.dart';

final phone = Contact(
  icon: Icons.call,
  value: "+261 34 90 637 88\n+261 32 92 037 67",
);

final mail = Contact(
  icon: Icons.mail,
  value: "tsiorymauyz@gmail.com",
);

final linkedIn = Contact(
  icon: UniconsLine.linkedin,
  value: "Moïse Tsiorinambinina",
);

final github = Contact(
  icon: UniconsLine.github,
  value: "https://github.com/mauyz",
);

final infos = Infos(
  photo: "assets/images/mauyz.png",
  name: "TSIORINAMBININA",
  firstName: "Pierre Moïse",
  job: S.current.jobTitle,
  contacts: [
    phone,
    mail,
    linkedIn,
    github,
  ],
);
