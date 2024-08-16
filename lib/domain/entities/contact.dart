import 'package:flutter/material.dart';

enum ContactType {
  phone,
  mail,
  link,
}

class Contact {
  final IconData icon;
  final List<String> values;
  final ContactType type;

  Contact({
    required this.icon,
    required this.values,
    required this.type,
  });
}
