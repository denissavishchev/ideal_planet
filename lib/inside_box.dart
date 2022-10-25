import 'package:flutter/material.dart';
import 'package:transparent_page/constants.dart';


class InsideBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint()
      ..color = kWhite.withOpacity(0.3);

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 3.0;
    paint.isAntiAlias = true;

    path.moveTo(0, 20);
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
        0, size.height, 40, size.height);
    path.quadraticBezierTo(
        100, size.height - 10, size.width / 2, size.height - 10);
    path.quadraticBezierTo(
        size.width - 150, size.height - 10, size.width - 40, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 20);

    path.quadraticBezierTo(
        size.width, 0, size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, 0, size.width - 40, 0);
    path.quadraticBezierTo(size.width - 150, 10,
        size.width / 2, 10);

    path.quadraticBezierTo(100, 10, 40, 0);
    path.quadraticBezierTo(40, 0, 100, 0);
    path.quadraticBezierTo(0, 0, 40, 0);
    path.quadraticBezierTo(0, 0, 0, 20);

    path.lineTo(0, 20);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

