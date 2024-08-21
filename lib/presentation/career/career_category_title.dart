import 'package:flutter/material.dart';

class CareerCategoryTitle extends StatelessWidget {
  final String title;

  const CareerCategoryTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(
            Icons.play_arrow,
          ),
        ),
        Flexible(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ],
    );
  }
}
