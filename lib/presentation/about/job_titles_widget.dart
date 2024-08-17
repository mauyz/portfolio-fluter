import 'package:flutter/material.dart';

class JobTitlesWidget extends StatelessWidget {
  final List<String> titles;
  const JobTitlesWidget({
    super.key,
    required this.titles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: titles.map(
        (e) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.play_arrow,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
