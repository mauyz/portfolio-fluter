import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/generated/l10n.dart';

final formations = {
  Formation(
    degree: S.current.masterDegree,
    date: "2015 - 2017",
    school: "Ecole Nationale d'Informatique (ENI)",
    address: "Fianarantsoa",
    desc: S.current.masterDesc,
  ),
  Formation(
    degree: S.current.licenseDegree,
    date: "2012 - 2015",
    school: "Ecole Nationale d'Informatique (ENI)",
    address: "Fianarantsoa",
    desc: S.current.licenceDesc,
  ),Formation(
    degree: S.current.bacDegree,
    date: "2012",
    school: "Lycée Fo Masin'i Jesoa",
    address: "Fianarantsoa",
    desc: '',
  ),
};
