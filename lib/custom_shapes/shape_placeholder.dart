import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ShapeHolder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8125000, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.1875000, size.height * 0.1250000);
    path_0.arcToPoint(Offset(size.width * 0.1250000, size.height * 0.1875000), radius: Radius.elliptical(size.width * 0.06250000, size.height * 0.06250000), rotation: 0, largeArc: false, clockwise: false);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.8125000);
    path_0.arcToPoint(Offset(size.width * 0.1875000, size.height * 0.8750000), radius: Radius.elliptical(size.width * 0.06250000, size.height * 0.06250000), rotation: 0, largeArc: false, clockwise: false);
    path_0.lineTo(size.width * 0.8125000, size.height * 0.8750000);
    path_0.arcToPoint(Offset(size.width * 0.8750000, size.height * 0.8125000), radius: Radius.elliptical(size.width * 0.06250000, size.height * 0.06250000), rotation: 0, largeArc: false, clockwise: false);
    path_0.lineTo(size.width * 0.8750000, size.height * 0.1875000);
    path_0.arcToPoint(Offset(size.width * 0.8125000, size.height * 0.1250000), radius: Radius.elliptical(size.width * 0.06250000, size.height * 0.06250000), rotation: 0, largeArc: false, clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.8125000, size.height * 0.8125000);
    path_0.lineTo(size.width * 0.1875000, size.height * 0.8125000);
    path_0.lineTo(size.width * 0.1875000, size.height * 0.1875000);
    path_0.lineTo(size.width * 0.8125000, size.height * 0.1875000);
    path_0.lineTo(size.width * 0.8125000, size.height * 0.8125000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
