import 'package:portfolio/domain/entities/contact.dart';

class Infos {
  final String photo;
  final String name;
  final String firstName;
  final List<String> titles;
  final String bio;
  final Set<Contact> contacts;

  Infos({
    required this.photo,
    required this.name,
    required this.firstName,
    required this.titles,
    required this.bio,
    required this.contacts,
  });
}
