import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/constants/experience_constants.dart';
import 'package:portfolio/core/constants/formation_constants.dart';
import 'package:portfolio/core/constants/infos_constants.dart';
import 'package:portfolio/core/constants/menu_constants.dart';
import 'package:portfolio/core/constants/project_constants.dart';
import 'package:portfolio/core/constants/stack_constants.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/domain/entities/infos.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/domain/entities/skill_category.dart';
import 'package:portfolio/domain/repos/data_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_repository_impl.g.dart';

class DataRepositoryImpl implements DataRepository {
  @override
  Set<Menu> getMenu(BuildContext context) {
    return getMenuList(context);
  }

  @override
  Infos getInfos(BuildContext context) {
    return getInfosData(context);
  }

  @override
  Set<Formation> getFormations(BuildContext context) {
    return getFormationList(context);
  }

  @override
  Set<Experience> getExperiences(BuildContext context) {
    return getExperienceList(context);
  }

  @override
  Set<SkillCategory> getSkills(BuildContext context) {
    return getSkillList(context);
  }

  @override
  Set<Project> getProjects(BuildContext context) {
    return getProjectList(context);
  }
}

@Riverpod(keepAlive: true)
DataRepository dataRepository(Ref re) {
  return DataRepositoryImpl();
}
