import 'package:flutter/material.dart';

class OnHoverContainer extends StatefulWidget {
  final Widget child;
  const OnHoverContainer({
    super.key,
    required this.child,
  });

  @override
  State<OnHoverContainer> createState() => _OnHoverContainerState();
}

class _OnHoverContainerState extends State<OnHoverContainer> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (isHovering) {
        setState(() {
          isHover = !isHover;
        });
      },
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    blurRadius: 12.0,
                  )
                ]
              : [],
        ),
        child: widget.child,
      ),
    );
  }
}
