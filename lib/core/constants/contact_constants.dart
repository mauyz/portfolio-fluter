import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:unicons/unicons.dart';

final phone = Contact(
  icon: Icons.call,
  values: [
    "+261 34 90 637 88 ",
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
final github = Contact(
  icon: UniconsLine.github,
  values: [
    "https://github.com/mauyz",
  ],
  type: ContactType.link,
);
