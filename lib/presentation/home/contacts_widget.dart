import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/presentation/common_widgets/contact_widget.dart';

class ContactsWidget extends StatelessWidget {
  final Set<Contact> contacts;

  const ContactsWidget({
    super.key,
    required this.contacts,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: contacts.map(
        (e) {
          return Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: ContactWidget(contact: e),
          );
        },
      ).toList(),
    );
  }
}
