import 'package:portfolio/domain/entities/skill.dart';

class SkillCategory {
  final String category;
  final Set<Skill> list;

  SkillCategory({
    required this.category,
    required this.list,
  });
}
