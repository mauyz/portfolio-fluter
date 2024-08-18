import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/school/school_item_desktop.dart';
import 'package:portfolio/presentation/career/school/school_item_mobile.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';

class SchoolItemWidget extends StatelessWidget {
  final Formation formation;
  final bool isIndexPair;
  final bool isLast;
  const SchoolItemWidget({
    super.key,
    required this.formation,
    required this.isIndexPair,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
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
    );
  }
}
