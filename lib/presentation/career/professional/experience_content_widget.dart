import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/presentation/career/left_clipper.dart';
import 'package:portfolio/presentation/career/right_clipper.dart';

class ExperienceContentWidget extends StatefulWidget {
  final Experience experience;
  final bool isPairIndex;

  const ExperienceContentWidget({
    super.key,
    required this.experience,
    required this.isPairIndex,
  });

  @override
  State<ExperienceContentWidget> createState() =>
      _ExperienceContentWidgetState();
}

class _ExperienceContentWidgetState extends State<ExperienceContentWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (isHovering) {
        setState(() {
          isHover = !isHover;
        });
      },
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary.withAlpha(100),
                    blurRadius: 12.0,
                    spreadRadius: -2,
                    offset: widget.isPairIndex
                        ? const Offset(-15, 0)
                        : const Offset(15, 0),
                  )
                ]
              : [],
        ),
        child: ClipPath(
          clipper: widget.isPairIndex ? LeftClipper() : RightClipper(),
          child: Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 20.0,
              top: 10.0,
            ),
            margin: const EdgeInsets.only(
              top: 2.0,
              bottom: 10.0,
            ),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Padding(
              padding: widget.isPairIndex
                  ? const EdgeInsets.only(right: 40.0)
                  : const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Wrap(
                    spacing: 20.0,
                    children: [
                      Text(
                        widget.experience.date,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        widget.experience.job,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                    ),
                    child: Wrap(
                      spacing: 20,
                      children: [
                        if (widget.experience.enterprise != null)
                          Text(
                            widget.experience.enterprise!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        Text(
                          widget.experience.type,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          widget.experience.location,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  ...widget.experience.description.split("\n").map(
                    (e) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("- "),
                            Flexible(
                              child: Text(e),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  if (widget.experience.stack.isNotEmpty)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Technologies : ",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          widget.experience.stack.join(", "),
                        ),
                      ],
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
