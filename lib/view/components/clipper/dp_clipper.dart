import 'package:flutter/material.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    final path = Path();

    var radius = size.width * 0.03;

    path.moveTo(size.width * 0.47, 0.0 + radius);
    var firstEndPoint = Offset(size.width * 0.53, 0.0 + radius);
    var firstControlPoint = Offset(size.width * 0.50, 0.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width - radius, size.height * 0.47);
    var secondEndPoint = Offset(size.width - radius, size.height * 0.53);
    var secondControlPoint = Offset(size.width, size.height * 0.50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width * 0.53, size.height - radius);
    var thirdEndPoint = Offset(size.width * 0.47, size.height - radius);
    var thirdControlPoint = Offset(size.width * 0.50, size.height);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(0.0 + radius, size.height * 0.53);
    var fourthEndPoint = Offset(0.0 + radius, size.height * 0.47);
    var fourthControlPoint = Offset(0.0, size.height * 0.50);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MessageClipper extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    final path = Path();

    var radius = size.width * 0.03;

    path.moveTo(size.width, 0.0 + radius);
    var firstEndPoint = Offset(size.width * 0.75, size.height * 0.90);
    var firstControlPoint = Offset(size.width * 0.8725, size.height * 0.50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(0.0, size.height * 0.40);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MessageClipper2 extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    final path = Path();

    var radius = size.width * 0.03;
    path.moveTo(0.0, 0.0 + radius);
    var firstEndPoint = Offset(size.width, size.height * 0.40);
    var firstControlPoint = Offset(size.width * 0.5, size.height * 0.10);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width * 0.25, size.height * 0.90);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
