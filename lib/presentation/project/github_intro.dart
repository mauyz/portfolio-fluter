import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/info_constants.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/generated/l10n.dart';

class GithubIntro extends StatelessWidget {
  const GithubIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).gitHubIntro,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextSpan(
            text: "GitHub",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                openLink(context, github.values.first);
              },
          ),
          TextSpan(
            text: S.of(context).gitHubEndIntro,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}