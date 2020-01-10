import 'package:flutter/material.dart';

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height * 0.50);
    path.lineTo(size.width * 0.85, (size.height * 0.34));
    var firstEndPoint = Offset(size.width * 0.65, (size.height * 0.29));
    var firstControlPoint =
        Offset(size.width * 0.75, (size.height * 0.30) - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(0.0, size.height * 0.55);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ProfileClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.50);
    path.lineTo(size.width * 0.85, (size.height * 0.34));
    var firstEndPoint = Offset(size.width * 0.65, (size.height * 0.29));
    var firstControlPoint =
        Offset(size.width * 0.75, (size.height * 0.30) - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(0.0, size.height * 0.55);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
