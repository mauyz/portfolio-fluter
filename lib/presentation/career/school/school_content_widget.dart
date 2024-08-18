import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/left_clipper.dart';
import 'package:portfolio/presentation/career/right_clipper.dart';

class SchoolContentWidget extends StatelessWidget {
  final Formation formation;
  final bool isIndexPair;
  final bool isLast;
  const SchoolContentWidget({
    super.key,
    required this.formation,
    required this.isIndexPair,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: isIndexPair ? LeftClipper() : RightClipper(),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
          top: 10.0,
        ),
        margin: EdgeInsets.only(
          bottom: isLast ? 0.0 : 50.0,
        ),
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Padding(
          padding: isIndexPair
              ? const EdgeInsets.only(right: 30.0)
              : const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                formation.date,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                ),
                child: Text(
                  '${formation.school}, ${formation.address}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: Text(
                  formation.degree,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ),
              ...formation.desc.split("\n").map(
                (e) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("- "),
                        Expanded(
                          child: Text(e),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
