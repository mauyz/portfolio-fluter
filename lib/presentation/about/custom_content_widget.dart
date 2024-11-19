import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/strategy/link_strategy.dart';

class CustomContentWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const CustomContentWidget({
    super.key,
    required this.text,
    this.style,
  });

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
    final textStyle = style ?? Theme.of(context).textTheme.bodyLarge;

    while (remainingText.isNotEmpty) {
      int earliestIndex = -1;
      String matchedWord = '';

      for (String word in {
        "Dart",
        "{",
        "}",
        "Java",
        "Ecole Nationale d'Informatique",
        "Kotlin",
        "Flutter",
        "Android SDK",
        "React Native",
        "Ionic",
        "Spring",
        "Symfony",
      }) {
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
            style: textStyle,
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
            style: textStyle,
          ),
        );
      }

      spans.add(
        matchedWord == "Ecole Nationale d'Informatique"
            ? TextSpan(
                text: matchedWord,
                style: textStyle?.copyWith(
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
                style: textStyle?.copyWith(
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
