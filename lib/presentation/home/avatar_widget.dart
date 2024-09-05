import 'package:flutter/material.dart';
import 'package:portfolio/presentation/common_widgets/responsive_widget.dart';

class AvatarWidget extends StatelessWidget {
  final String image;
  const AvatarWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(image), context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.error,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: const Offset(
              0.0,
              0.0,
            ),
          ),
        ],
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          image,
          scale: getImageScale(context),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  double getImageScale(BuildContext context) {
    if (ResponsiveWidget.isDesktop(context)) {
      return 1.0;
    } else if (ResponsiveWidget.isTablet(context)) {
      return 1.5;
    }
    return 2.5;
  }
}
