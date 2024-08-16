import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/contact.dart';

class ContactWidget extends StatelessWidget {
  final Contact contact;

  const ContactWidget({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      iconSize: 36.0,
      color: Theme.of(context).colorScheme.error,
      icon: Icon(
        contact.icon,
      ),
      splashColor: Theme.of(context).colorScheme.error,
      splashRadius: 12.0,
      onPressed: () {
        /// TODO
      },
      tooltip: contact.values.join("\n"),
    );
  }
}
