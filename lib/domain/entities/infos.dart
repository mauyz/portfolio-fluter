import 'package:portfolio/domain/entities/contact.dart';

class Infos {
  final String photo;
  final String name;
  final String firstName;
  final String job;
  final List<Contact> contacts;

  Infos({
    required this.photo,
    required this.name,
    required this.firstName,
    required this.job,
    required this.contacts,
  });
}
