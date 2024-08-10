import 'package:portfolio/core/constants/experience_constants.dart';
import 'package:portfolio/core/constants/formation_constants.dart';
import 'package:portfolio/core/constants/info_constants.dart';
import 'package:portfolio/core/constants/stack_constants.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/domain/entities/infos.dart';
import 'package:portfolio/domain/entities/skill.dart';
import 'package:portfolio/domain/repos/data_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_repository_impl.g.dart';

class DataRepositoryImpl implements DataRepository {
  @override
  Infos getInfos() {
    return infos;
  }

  @override
  Set<Formation> getFormation() {
    return formations;
  }

  @override
  Set<Experience> getExperience() {
    return experiences;
  }

  @override
  Set<Skill> getLanguage() {
    return languages;
  }

  @override
  Set<Skill> getFramework() {
    return framework;
  }
}
@riverpod
DataRepository dataRepository(DataRepositoryRef re) {
  return DataRepositoryImpl();
}
