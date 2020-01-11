import 'package:flutter/material.dart';

import 'message.dart';

class Messages extends StatelessWidget {
  final Color color;
  final String message;
  final String time;
  final bool isMyMessage;

  const Messages(
      {this.color = Colors.pink,
      this.message,
      this.time,
      this.isMyMessage = true});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return MessageBox(
      color: isMyMessage ? color : primaryColor,
      isRight: isMyMessage ? true : false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 6.0),
            child: Text(
              message,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            time,
            style: TextStyle(
              color: isMyMessage ? color : primaryColor,
              fontSize: 11.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
