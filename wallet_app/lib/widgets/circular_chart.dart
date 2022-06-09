import 'dart:math';

import 'package:flutter/material.dart';

class CircularChar extends CustomPainter{
  final Color backGroundColor;
  final Color onBoarderColor;
  final double percent;
  final double width;


  CircularChar(
      this.backGroundColor, this.onBoarderColor, this.percent, this.width);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backGroundLine =
    Paint()
      ..color = backGroundColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;


    Paint completeLine =
    Paint()
      ..color = onBoarderColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = Offset(size.width / 2 , size.height / 2);
    double radius = min(size.width / 2 , size.height / 2);

    canvas.drawCircle(center, radius, backGroundLine);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        - pi / 2,
        2 * pi * percent,
        false,
        completeLine
    );


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
  }
  
}