import 'package:flutter/material.dart';

class LeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0); // Move to the top right corner with an offset
    path.lineTo(size.width - 30, 20); // Draw the diagonal line
    path.lineTo(
      size.width - 30,
      size.height,
    ); // Move to the bottom right corner
    path.lineTo(0, size.height); // Move to the bottom left corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
