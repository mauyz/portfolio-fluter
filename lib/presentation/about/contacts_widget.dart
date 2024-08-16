import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/presentation/about/contact_limiter.dart';
import 'package:portfolio/presentation/common_widgets/contact_widget.dart';

class ContactsWidget extends StatelessWidget {
  final Set<Contact> contacts;

  const ContactsWidget({
    super.key,
    required this.contacts,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Flexible(
          child: ContactLimiter(),
        ),
        ...contacts.map(
          (e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ContactWidget(contact: e),
            );
          },
        ),
        const Flexible(
          child: ContactLimiter(),
        ),
      ],
    );
  }
}
