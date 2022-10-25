import 'package:flutter/material.dart';
import 'package:transparent_page/constants.dart';


class TopBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var colors = Offset.zero & size;
    var path = Path();
    var paint = Paint()
      ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.4, 0.9, 1],
          colors: [
            kWhite.withOpacity(0.4),
            kBlue.withOpacity(0.2),
            kBlue.withOpacity(0.0),
          ]).createShader(colors);

    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 3.0;
    paint.isAntiAlias = true;

    path.moveTo(0, 40);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 40);

    path.quadraticBezierTo(
        size.width, 0, size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, 0, size.width - 40, 0);
    path.quadraticBezierTo(size.width - 40, 0,
        size.width -100, 15);
    path.quadraticBezierTo(size.width - 150, 30,
        size.width / 2, 30);

    path.quadraticBezierTo(150, 30, 100, 15);
    path.quadraticBezierTo(50, 0, 40, 0);
    path.quadraticBezierTo(0, 0, 40, 0);
    path.quadraticBezierTo(0, 0, 0, 40);

    path.lineTo(0, 30);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

