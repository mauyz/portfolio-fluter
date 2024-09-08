import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:unicons/unicons.dart';

final phone = Contact(
  icon: Icons.call,
  values: [
    "+261 34 90 637 88 ",
    "+261 32 92 037 67",
  ],
  type: ContactType.phone,
);

final mail = Contact(
  icon: Icons.mail,
  values: [
    "tsiorymauyz@gmail.com",
  ],
  type: ContactType.mail,
);

final linkedIn = Contact(
  icon: UniconsLine.linkedin,
  values: [
    "https://linkedin.com/in/moise-tsiorinambinina",
  ],
  type: ContactType.link,
);

final skype = Contact(
  icon: UniconsLine.skype,
  values: [
    "live:tsiorymauyz",
  ],
  type: ContactType.skype,
);

final github = Contact(
  icon: UniconsLine.github,
  values: [
    "https://github.com/mauyz",
  ],
  type: ContactType.link,
);
