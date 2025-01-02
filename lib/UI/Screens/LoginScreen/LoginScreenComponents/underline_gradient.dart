import 'package:flutter/material.dart';

class GradientUnderlinePainterUsername extends CustomPainter {
  final double width;
  GradientUnderlinePainterUsername(this.width);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFF2C2C2C)
        ], // Gradient colors
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(Rect.fromLTRB(0, size.height - 6, size.width, size.height));

    canvas.drawLine(
      Offset(0, size.height - 3),
      Offset(size.width, size.height - 3),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class GradientUnderlinePainterPassword extends CustomPainter {
  final double width;
  GradientUnderlinePainterPassword(this.width);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFF2C2C2C)
        ], // Gradient colors
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(Rect.fromLTRB(0, size.height - 6, size.width, size.height));

    canvas.drawLine(
      Offset(0, size.height - 3),
      Offset(size.width, size.height - 3),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}