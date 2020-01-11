import 'package:flutter/material.dart';

import 'package:ui_challenge_1/view/components/clipper/dp_clipper.dart';

class MessageBox extends StatelessWidget {
  final Widget child;
  final bool isRight;
  final Color color;
  final EdgeInsetsGeometry padding;
  const MessageBox({this.child, this.isRight = true, this.padding, this.color});

  final double size = 30.0;
  final double top = 1.0;
  final double direction = 2.7;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Color primaryColor = Theme.of(context).primaryColor;
    return Stack(
      alignment: isRight ? Alignment.topRight : Alignment.topLeft,
      children: <Widget>[
        Container(
          padding: padding ??
              EdgeInsets.only(
                left: 10.0,
                right: 8.0,
                bottom: 3.0,
              ),
          margin: EdgeInsets.symmetric(vertical: 12).add(EdgeInsets.only(
            left: isRight ? width * 0.16 : 10,
            right: isRight ? 10 : width * 0.16,
          )),
          decoration: BoxDecoration(
            borderRadius: isRight
                ? BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
            border: Border.all(
              width: 2.0,
              color: color ?? primaryColor,
            ),
          ),
          child: child,
        ),
        isRight
            ? Positioned(
                top: top,
                right: direction,
                child: Container(
                  width: size,
                  height: size,
                  child: ClipPath(
                    clipper: MessageClipper(),
                    child: Container(
                      color: color ?? primaryColor,
                    ),
                  ),
                ),
              )
            : Positioned(
                top: top,
                left: direction,
                child: Container(
                  width: size,
                  height: size,
                  child: ClipPath(
                    clipper: MessageClipper2(),
                    child: Container(
                      color: color ?? primaryColor,
                    ),
                  ),
                ),
              )
      ],
    );
  }
}
