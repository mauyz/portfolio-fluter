import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/strategy/link_strategy.dart';

class BioWidget extends StatelessWidget {
  final String text;
  const BioWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RichText(
        text: TextSpan(
          children: _getSpans(context),
        ),
      ),
    );
  }

  List<TextSpan> _getSpans(BuildContext context) {
    List<TextSpan> spans = [];
    String remainingText = text;

    while (remainingText.isNotEmpty) {
      int earliestIndex = -1;
      String matchedWord = '';

      for (String word in [
        "Dart",
        "Java",
        "Ecole Nationale d'Informatique",
        "Kotlin",
        "Flutter",
        "Android SDK",
        "React Native",
        "Ionic",
        "Spring",
        "Symfony",
      ]) {
        int index = remainingText.indexOf(word);
        if (index != -1 && (earliestIndex == -1 || index < earliestIndex)) {
          earliestIndex = index;
          matchedWord = word;
        }
      }

      if (earliestIndex == -1) {
        spans.add(
          TextSpan(
            text: remainingText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        );
        break;
      }

      if (earliestIndex > 0) {
        spans.add(
          TextSpan(
            text: remainingText.substring(
              0,
              earliestIndex,
            ),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        );
      }

      spans.add(
        matchedWord.contains("Ecole")
            ? TextSpan(
                text: matchedWord,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    LinkStrategy().open(context, "https://eni.mg");
                  },
              )
            : TextSpan(
                text: matchedWord,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
              ),
      );
      remainingText =
          remainingText.substring(earliestIndex + matchedWord.length);
    }
    return spans;
  }
}
