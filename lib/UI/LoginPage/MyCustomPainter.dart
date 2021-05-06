import 'package:flutter/material.dart';

//color variables
Color mainBGColor = Color(0xF5E3F8EB);
Color green1 = Color(0xA2FFFFFF);
Color green2 = Color(0xE1FFFFFF);
Color green3 = Color(0x5E8BDB9F);
Color green4 = Color(0x15AEBDB3);
Color green5 = Color(0xC4E1F8E6);

//custom paint class
class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path mainBGPath = Path();
    mainBGPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = mainBGColor;
    canvas.drawPath(mainBGPath, paint);

    Path greenOnePath = Path();
    greenOnePath.moveTo(0, size.height * -0.8);
    greenOnePath.quadraticBezierTo(
        size.width * .15, size.height * 0.12, size.width * .73, size.height);
    greenOnePath.lineTo(0, size.height);
    greenOnePath.close();
    paint.color = green1;
    canvas.drawPath(greenOnePath, paint);

    Path greenFivePath = Path();
    greenFivePath.moveTo(0, size.height * 0.10);
    greenFivePath.quadraticBezierTo(
        size.width * .30, size.height * 0.95, size.width * .70, size.height);
    greenFivePath.lineTo(0, size.height);
    greenFivePath.close();
    paint.color = green5;
    canvas.drawPath(greenFivePath, paint);

    Path greenTwoPath = Path();
    greenTwoPath.moveTo(0, size.height * 0.70);
    greenTwoPath.quadraticBezierTo(
        size.width * .20, size.height * 0.95, size.width * .60, size.height);
    greenTwoPath.lineTo(0, size.height);
    greenTwoPath.close();
    paint.color = green2;
    canvas.drawPath(greenTwoPath, paint);

    Path greenFourPath = Path();
    greenFourPath.moveTo(0, size.height * 0.05);
    greenFourPath.quadraticBezierTo(
        size.width * .20, size.height * 0.95, size.width * .40, size.height);
    greenFourPath.lineTo(0, size.height);
    greenFourPath.close();
    paint.color = green4;
    canvas.drawPath(greenFourPath, paint);

    Path greenThreePath = Path();
    greenThreePath.moveTo(0, size.height * 0.50);
    greenThreePath.quadraticBezierTo(
        size.width * .10, size.height * 0.95, size.width * .20, size.height);
    greenThreePath.lineTo(0, size.height);
    greenThreePath.close();
    paint.color = green3;
    canvas.drawPath(greenThreePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
