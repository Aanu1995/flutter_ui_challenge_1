import 'package:flutter/material.dart';
import 'package:ui_challenge_1/view/components/clipper/dp_clipper.dart';

class DisplayPicture extends StatelessWidget {
  final String image;
  final Color color;
  DisplayPicture({this.image, this.color});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: width * 0.22,
          height: width * 0.22,
          child: ClipPath(
            clipper: DiagonalClipper(),
            child: Container(
              color: color,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.20,
          height: width * 0.20,
          child: ClipPath(
            clipper: DiagonalClipper(),
            child: Container(
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.18,
          height: width * 0.18,
          child: ClipPath(
            clipper: DiagonalClipper(),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
