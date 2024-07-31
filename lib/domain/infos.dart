import 'package:portfolio/domain/contact.dart';

class Infos {
  final String photo;
  final String name;
  final String job;
  final List<Contact> contacts;

  Infos({
    required this.photo,
    required this.name,
    required this.job,
    required this.contacts,
  });
}
