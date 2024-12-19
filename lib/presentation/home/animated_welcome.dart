import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:unicons/unicons.dart';

class AnimatedWelcome extends ConsumerStatefulWidget {
  const AnimatedWelcome({super.key});

  @override
  AnimatedWelcomeState createState() => AnimatedWelcomeState();
}

class AnimatedWelcomeState extends ConsumerState<AnimatedWelcome>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                S.current.welcomeTitle,
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 2,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Padding(
                padding: EdgeInsets.only(top: _animation.value),
                child: IconButton.filledTonal(
                  color: Theme.of(context).colorScheme.error,
                  iconSize: 36.0,
                  onPressed: () {
                    final menuAboutContext = ref
                        .read(dataRepositoryProvider)
                        .getMenu()
                        .elementAt(1)
                        .key
                        .currentContext;
                    if (menuAboutContext != null) {
                      Scrollable.ensureVisible(
                        menuAboutContext,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeOut,
                      );
                    }
                  },
                  icon: const Icon(
                    UniconsLine.angle_double_down,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
