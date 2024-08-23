import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio/domain/entities/skill.dart';
import 'package:portfolio/presentation/common_widgets/animator.dart';
import 'package:portfolio/presentation/common_widgets/on_hover_container.dart';

class SkillCard extends StatelessWidget {
  final Skill skill;
  const SkillCard({
    super.key,
    required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    final note = skill.note;
    return WidgetAnimator(
      child: OnHoverContainer(
        child: Card(
          elevation: 1.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: note != null
                ? CircularPercentIndicator(
                    radius: 40.0,
                    percent: note / 100,
                    progressColor: Theme.of(context).colorScheme.error,
                    backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                    animateFromLastPercent: true,
                    animation: true,
                    center: Text(
                      "$note%",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Theme.of(context).colorScheme.error),
                    ),
                    footer: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.asset(
                              "assets/images/${skill.icon}.png",
                              width: 24.0,
                              height: 24.0,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              skill.name,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/images/${skill.icon}.png",
                            width: 36.0,
                            height: 36.0,
                            color:
                                (Theme.of(context).brightness == Brightness.dark &&
                                        skill.name == "GitHub")
                                    ? Colors.white
                                    : null,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              skill.name,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
