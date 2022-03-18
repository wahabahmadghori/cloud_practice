import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CorrectShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8333333, size.height * 0.8750000);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.8750000);
    path_0.cubicTo(size.width * 0.1437500, size.height * 0.8750000, size.width * 0.1250000, size.height * 0.8562500, size.width * 0.1250000, size.height * 0.8333333);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.1666667);
    path_0.cubicTo(size.width * 0.1250000, size.height * 0.1437500, size.width * 0.1437500, size.height * 0.1250000, size.width * 0.1666667, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.1250000);
    path_0.cubicTo(size.width * 0.8562500, size.height * 0.1250000, size.width * 0.8750000, size.height * 0.1437500, size.width * 0.8750000, size.height * 0.1666667);
    path_0.lineTo(size.width * 0.8750000, size.height * 0.8333333);
    path_0.cubicTo(size.width * 0.8750000, size.height * 0.8562500, size.width * 0.8562500, size.height * 0.8750000, size.width * 0.8333333, size.height * 0.8750000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width * 0.5000000, size.height * 0.1275208), Offset(size.width * 0.5000000, size.height * 0.8758125), [
      Color(0xff9dffce).withOpacity(1),
      Color(0xff50d18d).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4436042, size.height * 0.6813958);
    path_1.lineTo(size.width * 0.2769375, size.height * 0.5147292);
    path_1.cubicTo(size.width * 0.2687917, size.height * 0.5065833, size.width * 0.2687917, size.height * 0.4933958, size.width * 0.2769375, size.height * 0.4852708);
    path_1.lineTo(size.width * 0.3063958, size.height * 0.4558125);
    path_1.cubicTo(size.width * 0.3145417, size.height * 0.4476667, size.width * 0.3277292, size.height * 0.4476667, size.width * 0.3358542, size.height * 0.4558125);
    path_1.lineTo(size.width * 0.4583333, size.height * 0.5782917);
    path_1.lineTo(size.width * 0.6849792, size.height * 0.3516458);
    path_1.cubicTo(size.width * 0.6931250, size.height * 0.3435000, size.width * 0.7063125, size.height * 0.3435000, size.width * 0.7144375, size.height * 0.3516458);
    path_1.lineTo(size.width * 0.7438958, size.height * 0.3811042);
    path_1.cubicTo(size.width * 0.7520417, size.height * 0.3892500, size.width * 0.7520417, size.height * 0.4024375, size.width * 0.7438958, size.height * 0.4105625);
    path_1.lineTo(size.width * 0.4730625, size.height * 0.6813958);
    path_1.cubicTo(size.width * 0.4649375, size.height * 0.6895417, size.width * 0.4517292, size.height * 0.6895417, size.width * 0.4436042, size.height * 0.6813958);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.shader = ui.Gradient.linear(Offset(size.width * 0.2708333, size.height * 0.5165208), Offset(size.width * 0.7500000, size.height * 0.5165208), [
      Color(0xff135d36).withOpacity(1),
      Color(0xff125933).withOpacity(1),
      Color(0xff11522f).withOpacity(1)
    ], [
      0.824,
      0.931,
      1
    ]);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
