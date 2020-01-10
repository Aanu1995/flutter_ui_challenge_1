import 'package:flutter/material.dart';

import 'package:ui_challenge_1/model/message.dart';
import 'package:ui_challenge_1/view/components/clipper/dp_clipper.dart';

class MessageBox extends StatelessWidget {
  final Color color;
  final Message message;

  const MessageBox({this.color, this.message});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width * 0.02);
    final colorContext = Theme.of(context);
    return SizedBox(
      child: Container(
        child: Stack(
          alignment: message.isMe ? Alignment.topRight : Alignment.topLeft,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 8.0, bottom: 3.0),
              margin: EdgeInsets.symmetric(vertical: 12).add(EdgeInsets.only(
                left: message.isMe ? width * 0.16 : 10,
                right: message.isMe ? 10 : width * 0.16,
              )),
              decoration: BoxDecoration(
                borderRadius: message.isMe
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
                  color: message.isMe ? color : Theme.of(context).primaryColor,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 6.0),
                    child: Text(
                      message.message,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    message.time,
                    style: TextStyle(
                      color: message.isMe ? color : colorContext.primaryColor,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            message.isMe
                ? Positioned(
                    top: 1,
                    right: 2.7,
                    child: Container(
                      width: 30,
                      height: 30,
                      child: ClipPath(
                        clipper: MessageClipper(),
                        child: Container(
                          color: color,
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    top: 1,
                    left: 2.7,
                    child: Container(
                      width: 30,
                      height: 30,
                      child: ClipPath(
                        clipper: MessageClipper2(),
                        child: Container(
                          color: colorContext.primaryColor,
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
