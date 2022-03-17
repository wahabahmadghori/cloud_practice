import 'package:flutter/material.dart';
import '../custom_shapes/quiz_shape.dart';

class QuizTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomPaint(
          child: Container(
            width: 50,
            height: 50,
          ),
          foregroundPainter: QuizLogo(),
        ),
        Text(
          'Quiz 10',
          style: TextStyle(fontSize: 28),
        )
      ],
    );
  }
}
