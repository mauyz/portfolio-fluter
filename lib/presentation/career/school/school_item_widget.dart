import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/school/school_item_mobile.dart';

class SchoolItemWidget extends StatelessWidget {
  final Formation formation;
  final bool isLast;

  const SchoolItemWidget({
    super.key,
    required this.formation,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return SchoolItemMobile(
      formation: formation,
      isLast: isLast,
    );
    /*return ResponsiveWidget(
      mobile: SchoolItemMobile(
        formation: formation,
        isLast: isLast,
      ),
      tablet: SchoolItemDesktop(
        formation: formation,
        isIndexPair: isIndexPair,
        isLast: isLast,
      ),
      desktop: SchoolItemDesktop(
        formation: formation,
        isIndexPair: isIndexPair,
        isLast: isLast,
      ),
    );*/
  }
}
