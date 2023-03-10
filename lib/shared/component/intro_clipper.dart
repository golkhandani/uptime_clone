import 'package:flutter/material.dart';

class HomepageIntroClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // final path = Path();
    // path.lineTo(0, size.height * 0.8);

    // final firstStart = Offset(size.width / 8, size.height);
    // final firstEnd = Offset(size.width / 7, size.height);

    // path.cubicTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy,
    //     size.width / 3, size.height / 2);

    // final firstStart2 = Offset(size.width - 36, size.height - 24);
    // final firstEnd2 = Offset(size.width - 24, size.height);

    // path.cubicTo(firstStart2.dx, firstStart2.dy, firstEnd2.dx, firstEnd2.dy,
    //     size.width * 0.6, size.height * 0.8);

    // path.lineTo(
    //     size.width, 0); //end with this path if you are making wave at bottom
    // path.close();
    Path path = new Path();
    // path starts with (0.0, 0.0) point (1)
    path.lineTo(0.0, size.height - 36);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 150);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
