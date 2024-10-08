import 'package:flutter/material.dart';
import 'package:portfolio/data/strategy/email_strategy.dart';
import 'package:portfolio/data/strategy/link_strategy.dart';
import 'package:portfolio/data/strategy/skype_strategy.dart';
import 'package:portfolio/data/strategy/whatsapp_strategy.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/domain/strategy/contact_strategy.dart';

void openContact(BuildContext context, Contact contact) {
  final ContactStrategy strategy = switch (contact.type) {
    ContactType.phone => WhatsappStrategy(),
    ContactType.mail => EmailStrategy(),
    ContactType.link => LinkStrategy(),
    ContactType.skype => SkypeStrategy(),
  };
  strategy.open(context, contact.values.first);
}
