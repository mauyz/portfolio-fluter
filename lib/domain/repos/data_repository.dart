import 'package:flutter/cupertino.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/domain/entities/infos.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/domain/entities/skill_category.dart';

abstract class DataRepository {
  const DataRepository();
  Set<Menu> getMenu(BuildContext context);
  Infos getInfos(BuildContext context);
  Set<Formation> getFormation(BuildContext context);
  Set<Experience> getExperience(BuildContext context);
  Set<SkillCategory> getSkills(BuildContext context);
  Set<Project> getProjects(BuildContext context);
}
