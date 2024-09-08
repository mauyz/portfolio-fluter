import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/domain/entities/project_link.dart';
import 'package:portfolio/domain/entities/skill.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:unicons/unicons.dart';

Set<Project> getProjectList(BuildContext context) {
  return {
    Project(
      title: "Quadient Scan",
      preview: "quadient",
      description: S.of(context).quadientDesc,
      links: {
        ProjectLink(
          name: "Play store",
          icon: UniconsLine.google_play,
          value:
              "https://play.google.com/store/apps/details?id=com.quadient.app",
        ),
        ProjectLink(
          name: "App store",
          icon: UniconsLine.apple,
          value: "https://apps.apple.com/pl/app/quadient-scan/id6504674418",
        ),
      },
      stacks: {
        Skill(
          name: "Dart",
          icon: "Dart",
          note: 80,
        ),
        Skill(
          name: "Flutter",
          icon: "Flutter",
          note: 80,
        ),
        Skill(
          name: "Rest API",
          icon: "api",
        ),
        Skill(
          name: "GitLab",
          icon: "GitLab",
        ),
        Skill(
          name: "Jira",
          icon: "Jira",
        ),
      },
    ),
    Project(
      title: "Constitution Malagasy",
      preview: "constitution",
      description: S.of(context).constitutionDesc,
      links: {
        ProjectLink(
          name: "Play store",
          icon: UniconsLine.google_play,
          value:
              "https://play.google.com/store/apps/details?id=com.eightgroup.mauyz.constitution",
        ),
        ProjectLink(
          name: "Web",
          icon: Icons.public,
          value: "https://constitutionmg.vercel.app/",
        ),
      },
      stacks: {
        Skill(
          name: "Dart",
          icon: "Dart",
          note: 80,
        ),
        Skill(
          name: "Flutter",
          icon: "Flutter",
          note: 80,
        ),
        Skill(
          name: "SQLite",
          icon: "SQLite",
          note: 80,
        ),
        Skill(
          name: "GitLab",
          icon: "GitLab",
        ),
      },
    ),
    Project(
      title: "Feelin",
      preview: "feelin",
      description: S.of(context).feelinDesc,
      links: {
        ProjectLink(
          name: "Play store",
          icon: UniconsLine.google_play,
          value:
              "https://play.google.com/store/apps/details?id=eu.feelin.feelinApp",
        ),
      },
      stacks: {
        Skill(
          name: "Dart",
          icon: "Dart",
          note: 80,
        ),
        Skill(
          name: "Flutter",
          icon: "Flutter",
          note: 80,
        ),
        Skill(
          name: "Java",
          icon: "Java",
          note: 60,
        ),
        Skill(
          name: "Firebase",
          icon: "Firebase",
          note: 80,
        ),
        Skill(
          name: "GraphQL",
          icon: "GraphQL",
        ),
        Skill(
          name: "SQLite",
          icon: "SQLite",
          note: 80,
        ),
      },
    ),
    Project(
      title: "Portfolio",
      preview: "portfolio",
      description: S.of(context).portfolioDesc,
      links: {
        ProjectLink(
          name: "GitHub",
          icon: UniconsLine.github,
          value: "https://github.com/mauyz/portfolio-fluter",
        ),
      },
      stacks: {
        Skill(
          name: "Dart",
          icon: "Dart",
          note: 80,
        ),
        Skill(
          name: "Flutter",
          icon: "Flutter",
          note: 80,
        ),
        Skill(
          name: "SQLite",
          icon: "SQLite",
          note: 80,
        ),
      },
    ),
  };
}
