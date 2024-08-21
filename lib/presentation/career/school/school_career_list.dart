import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/career/career_category_title.dart';
import 'package:portfolio/presentation/career/school/school_item_widget.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';

class SchoolCareerList extends ConsumerWidget {
  const SchoolCareerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listFormation = ref.read(dataRepositoryProvider).getFormation();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CareerCategoryTitle(
          title: S.of(context).academicTitle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        LayoutBuilder(
          builder: (_, __) {
            return IntrinsicWidth(
              child: Column(
                children: listFormation.indexed.map(
                  (e) {
                    return IntrinsicHeight(
                      child: ResponsiveWidget(
                        mobile: SchoolItemWidget(
                          formation: e.$2,
                          isDesktop: false,
                          isPairIndex: false,
                          isLastIndex: e.$1 == (listFormation.length - 1),
                        ),
                        desktop: SchoolItemWidget(
                          formation: e.$2,
                          isDesktop: true,
                          isPairIndex: (e.$1 % 2) == 0,
                          isLastIndex: e.$1 == (listFormation.length - 1),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            );
          },
        )
      ],
    );
  }
}
