import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';

class SectionCard extends StatelessWidget {
  final Widget child;
  const SectionCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: ResponsiveWidget.isMobile(context)? 20.0 : 30.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Theme.of(context).colorScheme.inversePrimary,
            Theme.of(context).colorScheme.onInverseSurface,
          ],
        ),
      ),
      child: child,
    );
  }
}
