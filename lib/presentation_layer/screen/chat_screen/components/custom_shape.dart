import 'package:flutter/material.dart';
import '../../../../helper/constant/color_helper.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = HexColor(PRIMARY_COLOR)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height * 0.3300000);
    path0.lineTo(size.width * 0.2113000, size.height * 0.9042909);
    path0.lineTo(size.width * 0.1907250, size.height * 0.9023818);
    path0.lineTo(0, size.height * 0.6330364);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
