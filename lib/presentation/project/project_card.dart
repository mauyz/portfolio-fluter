import 'package:flutter/material.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/generated/l10n.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 40.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              project.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Image.asset(
                    "assets/images/${project.preview}.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 10.0,
              spacing: 10.0,
              children: project.stacks.map(
                (e) {
                  return FilledButton.tonal(
                    onPressed: null,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset(
                            "assets/images/${e.icon}.png",
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            e.name,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8.0,
              runSpacing: 8.0,
              children: project.links.isEmpty
                  ? []
                  : [
                      Text(
                        S.current.viewMore,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      ...project.links.map(
                        (e) {
                          return IconButton.filledTonal(
                            onPressed: () {
                              openLink(context, e.value);
                            },
                            icon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(e.name),
                            ),
                            tooltip: e.value,
                          );
                        },
                      )
                    ],
            )
          ],
        ),
      ),
    );
  }
}
