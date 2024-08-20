import 'package:flutter/material.dart';
import 'package:portfolio/domain/entities/formation.dart';
import 'package:portfolio/presentation/career/left_clipper.dart';

import '../right_clipper.dart';

class SchoolContentWidget extends StatelessWidget {
  final Formation formation;
  final bool isPairIndex;
  final bool isLastIndex;

  const SchoolContentWidget({
    super.key,
    required this.formation,
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
              if (formation.desc.isNotEmpty)
                ...formation.desc.split("\n").map(
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
            ],
          ),
        ),
      ),
    );
  }
}
