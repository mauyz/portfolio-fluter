import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:portfolio/presentation/career/school/school_career_list.dart';
import 'package:portfolio/presentation/common_widgets/section_card.dart';
import 'package:portfolio/presentation/common_widgets/section_title_widget.dart';

class CareerSection extends StatelessWidget {
  final Menu menu;
  CareerSection({
    required this.menu,
  }) : super(key: menu.key);

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      decorated: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30.0,
            ),
            child: SectionTitleWidget(menu: menu),
          ),
          const SchoolCareerList(),
        ],
      ),
    );
  }
}