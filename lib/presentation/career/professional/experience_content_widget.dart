import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/experience.dart';
import 'package:portfolio/presentation/career/left_clipper.dart';
import 'package:portfolio/presentation/career/right_clipper.dart';

class ExperienceContentWidget extends StatelessWidget {
  final Experience experience;
  final bool isPairIndex;
  final bool isLastIndex;

  const ExperienceContentWidget({
    super.key,
    required this.experience,
    required this.isPairIndex,
    required this.isLastIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: isPairIndex ? LeftClipper() : RightClipper(),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
          top: 10.0,
        ),
        margin: EdgeInsets.only(
          bottom: isLastIndex ? 0.0 : 30.0,
        ),
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Padding(
          padding: isPairIndex
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
                    experience.date,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    experience.job,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
                    if (experience.enterprise != null)
                      Text(
                        experience.enterprise!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    Text(
                      experience.type,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      experience.location,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              ...experience.description.split("\n").map(
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
              if (experience.stack.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Technologies : ",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      experience.stack.join(", "),
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
