import 'package:flutter/cupertino.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/generated/l10n.dart';

Set<Experience> getExperienceList(BuildContext context) {
  return {
    Experience(
      job: S.of(context).consultantDeveloperFlutter,
      date: S.of(context).sinceMai2024,
      type: S.of(context).freelance,
      location: "Antananarivo, Madagascar",
      description: S.of(context).jlConsultingDesc,
      stack: {
        "Java",
        "Dart",
        "PHP",
        "Flutter",
        "Symfony",
        "Spring Boot",
        "REST API",
        "MySQL",
        "Git",
        "Fastlane",
        "Docker"
      },
    ),
    Experience(
      job: S.of(context).flutterDeveloper,
      date: "2022 - 2024",
      enterprise: "Neoshore Madagascar",
      type: "CDI",
      location: "Antananarivo, Madagascar",
      description: S.of(context).neoshoreDesc,
      stack: {
        "Dart",
        "Java",
        "Kotlin",
        "Flutter",
        "GraphQl",
        "REST API",
        "SQLite",
        "Firebase",
        "Social Network Authentication",
        "Facebook API",
        "Face detection",
        "Git"
      },
    ),
    Experience(
      job: S.of(context).androidDeveloper,
      date: "2020 - 2022",
      type: "Freelance",
      location: "Antananarivo, Madagascar",
      description: S.of(context).freelanceDesc,
      stack: {
        "Java",
        "Kotlin",
        "SQLite",
        "Firebase",
        "MySql",
        "REST API",
        "Web socket",
        "Google Calendar",
        "OpenStreetMap",
        "Git",
      },
    ),
    Experience(
      job: S.of(context).systemAdministrator,
      enterprise: "ONN & OLEP",
      date: "2017 - 2020",
      type: "CDI",
      location: "Antananarivo, Madagascar",
      description: S.of(context).onnOlepDesc,
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
      job: S.of(context).androidDeveloper,
      enterprise: "E-Maya Offshore",
      date: "2016 - 2017",
      type: S.of(context).internship,
      location: "Antananarivo, Madagascar",
      description: S.of(context).emayaDesc,
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
  };
}
