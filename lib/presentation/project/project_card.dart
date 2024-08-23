import 'package:flutter/material.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/domain/entities/project.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/common_widgets/on_hover_container.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    precacheImage(
      AssetImage("assets/images/${project.preview}.png"),
      context,
    );
    return OnHoverContainer(
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.only(
          bottom: 20.0,
        ),
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
              Flexible(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  child: Image.asset(
                    "assets/images/${project.preview}.png",
                    fit: BoxFit.cover,
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
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              "assets/images/${e.icon}.png",
                              width: 16.0,
                              height: 16.0,
                            ),
                          ),
                          Text(
                            e.name,
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
              if (project.links.isNotEmpty)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      S.current.viewMore,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: project.links.map(
                            (e) {
                              return Tooltip(
                                message: e.value,
                                child: FilledButton.tonalIcon(
                                  onPressed: () {
                                    openLink(context, e.value);
                                  },
                                  icon: Icon(
                                    e.icon,
                                    size: 16,
                                  ),
                                  label: Text(e.name),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
