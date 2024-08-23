import 'package:flutter/material.dart';

class CareerItemHoverContainer extends StatefulWidget {
  final Widget itemWidget;
  final bool isPairIndex;
  const CareerItemHoverContainer({
    super.key,
    required this.itemWidget,
    required this.isPairIndex,
  });

  @override
  State<CareerItemHoverContainer> createState() =>
      _CareerItemHoverContainerState();
}

class _CareerItemHoverContainerState extends State<CareerItemHoverContainer> {
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
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary.withAlpha(100),
                    blurRadius: 12.0,
                    spreadRadius: -2,
                    offset: widget.isPairIndex
                        ? const Offset(-15, 0)
                        : const Offset(15, 0),
                  )
                ]
              : [],
        ),
        child: widget.itemWidget,
      ),
    );
  }
}
