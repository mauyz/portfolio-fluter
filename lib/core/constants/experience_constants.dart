import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/generated/l10n.dart';

final experiences = [
  Experience(
    job: S.current.consultantDeveloperFlutter,
    date: S.current.sinceMai2024,
    enterprise: "JL Consulting",
    type: S.current.freelance,
    location: "Antananarivo, Madagascar",
    description: "description",
    stack: {
      "Dart",
      "Java",
      "Kotlin",
      "REST API",
      "Gitlab",
      "Jira",
      "Slack",
    },
  ),
  Experience(
    job: S.current.flutterDeveloper,
    date: "2022 - 2024",
    enterprise: "Neoshore Madagascar",
    type: "CDI",
    location: "Antananarivo, Madagascar",
    description: "description",
    stack: {
      "Dart",
      "Java",
      "Kotlin",
      "GraphQl",
      "REST API",
      "SQLite",
      "Firebase",
      "Google API",
      "Facebook API",
      "Face detection",
      "Github",
      "Asana",
    },
  ),
  Experience(
    job: S.current.systemAdministrator,
    enterprise: "ONN & OLEP",
    date: "2017 - 2020",
    type: "CDI",
    location: "Antananarivo, Madagascar",
    description: "description",
    stack: {
      "GLPI",
      "Active Directory",
      "Pfsense",
      "Script Bash & Shell",
      "PHP",
      "Apache",
      "Zimbra",
    },
  ),
  Experience(
    job: S.current.androidDeveloper,
    enterprise: "E-Maya Offshore",
    date: "2016 - 2017",
    type: S.current.internship,
    location: "Antananarivo, Madagascar",
    description: "description",
    stack: {
      "Java",
      "Kotlin",
      "SQLite",
      "Firebase",
      "Google API",
      " Web socket",
      "REST API",
      "PHP",
    },
  ),
];
