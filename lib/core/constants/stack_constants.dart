import 'package:flutter/cupertino.dart';
import 'package:portfolio/domain/entities/skill.dart';
import 'package:portfolio/domain/entities/skill_category.dart';
import 'package:portfolio/generated/l10n.dart';

Set<SkillCategory> getSkillList(BuildContext context) {
  return {
    SkillCategory(
      category: S.of(context).language,
      list: {
        Skill(
          name: "Dart",
          icon: "Dart",
          // note: 80,
        ),
        Skill(
          name: "Java",
          icon: "Java",
          //note: 60,
        ),
        Skill(
          name: "TypeScript",
          icon: "TypeScript",
          //note: 50,
        ),
        Skill(
          name: "PHP",
          icon: "php",
          //note: 50,
        ),
      },
    ),
    SkillCategory(
      category: S.of(context).framework,
      list: {
        Skill(
          name: "Flutter",
          icon: "Flutter",
          //note: 80,
        ),
        Skill(
          name: "Android SDK",
          icon: "Android",
          //note: 80,
        ),
        Skill(
          name: "Symfony",
          icon: "symfony",
          //note: 60,
        ),
        Skill(
          name: "Spring Boot",
          icon: "SpringBoot",
          // note: 50,
        )
      },
    ),
    SkillCategory(
      category: S.of(context).database,
      list: {
        Skill(
          name: "PostgreSQL",
          icon: "PostgreSQL",
          //note: 80,
        ),
        Skill(
          name: "MySQL",
          icon: "MySQL",
          //note: 90,
        ),
        Skill(
          name: "MongoDB",
          icon: "MongoDB",
          //note: 60,
        ),
      },
    ),
    SkillCategory(
      category: S.of(context).toolsApi,
      list: {
        Skill(
          name: "Firebase",
          icon: "Firebase",
          //note: 80,
        ),
        Skill(
          name: "Supabase",
          icon: "Supabase",
          //note: 80,
        ),
        Skill(
          name: "Git",
          icon: "Git",
        ),
        Skill(
          name: "Docker",
          icon: "Docker",
        ),
        Skill(
          name: "Fastlane",
          icon: "Fastlane",
        ),
        Skill(
          name: "Rest API",
          icon: "api",
        ),
        Skill(
          name: "GraphQL",
          icon: "GraphQL",
        ),
      },
    ),
  };
}
