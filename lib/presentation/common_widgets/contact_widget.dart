import 'package:flutter/material.dart';
import 'package:portfolio/core/contact_util.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:unicons/unicons.dart';

class ContactWidget extends StatelessWidget {
  final Contact contact;

  const ContactWidget({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 24.0,
      color: Theme.of(context).colorScheme.error,
      icon: Icon(
        contact.type == ContactType.phone ? UniconsLine.whatsapp : contact.icon,
      ),
      onPressed: () {
        openContact(context, contact);
      },
      tooltip: contact.values.elementAt(0),
    );
  }
}
