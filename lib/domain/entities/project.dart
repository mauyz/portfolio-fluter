import 'package:portfolio/domain/entities/project_link.dart';
import 'package:portfolio/domain/entities/skill.dart';

class Project {
  final String title;
  final String preview;
  final String description;
  final Set<ProjectLink> links;
  final Set<Skill> stacks;

  Project({
    required this.title,
    required this.preview,
    required this.description,
    required this.links,
    required this.stacks,
  });
}
