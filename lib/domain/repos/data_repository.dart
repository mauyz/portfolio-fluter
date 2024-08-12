import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/domain/entities/infos.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/domain/entities/skill.dart';

abstract class DataRepository {
  const DataRepository();
  Set<Menu> getMenu();
  Infos getInfos();
  Set<Formation> getFormation();
  Set<Experience> getExperience();
  Set<Skill> getLanguage();
  Set<Skill> getFramework();
}
