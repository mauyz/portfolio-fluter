import 'package:flutter/cupertino.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/generated/l10n.dart';

Set<Formation> getFormationList(BuildContext context) {
  return {
    Formation(
      degree: S.of(context).masterDegree,
      date: "2015 - 2017",
      school: "Ecole Nationale d'Informatique (ENI)",
      address: "Fianarantsoa",
      desc: S.of(context).masterDesc,
    ),
    Formation(
      degree: S.of(context).licenseDegree,
      date: "2012 - 2015",
      school: "Ecole Nationale d'Informatique (ENI)",
      address: "Fianarantsoa",
      desc: S.of(context).licenceDesc,
    ),
    Formation(
      degree: S.of(context).bacDegree,
      date: "2012",
      school: "Lycée Fo Masin'i Jesoa",
      address: "Fianarantsoa",
      desc: '',
    ),
  };
}
