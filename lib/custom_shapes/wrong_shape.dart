import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class WrongShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7518667, size.height * 0.5000010);
    path_0.lineTo(size.width * 0.9867890, size.height * 0.2650786);
    path_0.cubicTo(size.width * 1.004404, size.height * 0.2474634, size.width * 1.004404, size.height * 0.2189028, size.width * 0.9867890, size.height * 0.2012895);
    path_0.lineTo(size.width * 0.7987125, size.height * 0.01321292);
    path_0.cubicTo(size.width * 0.7810972, size.height * -0.004402352, size.width * 0.7525366, size.height * -0.004402352, size.width * 0.7349233, size.height * 0.01321292);
    path_0.lineTo(size.width * 0.5000010, size.height * 0.2481353);
    path_0.lineTo(size.width * 0.2650747, size.height * 0.01321292);
    path_0.cubicTo(size.width * 0.2474595, size.height * -0.004402352, size.width * 0.2188989, size.height * -0.004402352, size.width * 0.2012855, size.height * 0.01321292);
    path_0.lineTo(size.width * 0.01321096, size.height * 0.2012855);
    path_0.cubicTo(size.width * -0.004404305, size.height * 0.2189008, size.width * -0.004404305, size.height * 0.2474614, size.width * 0.01321096, size.height * 0.2650747);
    path_0.lineTo(size.width * 0.2481333, size.height * 0.4999971);
    path_0.lineTo(size.width * 0.01321096, size.height * 0.7349233);
    path_0.cubicTo(size.width * -0.004404305, size.height * 0.7525386, size.width * -0.004404305, size.height * 0.7810992, size.width * 0.01321096, size.height * 0.7987125);
    path_0.lineTo(size.width * 0.2012875, size.height * 0.9867871);
    path_0.cubicTo(size.width * 0.2189028, size.height * 1.004402, size.width * 0.2474634, size.height * 1.004402, size.width * 0.2650767, size.height * 0.9867871);
    path_0.lineTo(size.width * 0.4999990, size.height * 0.7518647);
    path_0.lineTo(size.width * 0.7349214, size.height * 0.9867871);
    path_0.cubicTo(size.width * 0.7525366, size.height * 1.004402, size.width * 0.7810972, size.height * 1.004402, size.width * 0.7987105, size.height * 0.9867871);
    path_0.lineTo(size.width * 0.9867871, size.height * 0.7987125);
    path_0.cubicTo(size.width * 1.004402, size.height * 0.7810972, size.width * 1.004402, size.height * 0.7525366, size.width * 0.9867871, size.height * 0.7349233);
    path_0.lineTo(size.width * 0.7518667, size.height * 0.5000010);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFF6465).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
