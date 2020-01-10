import 'package:flutter/material.dart';

import 'package:ui_challenge_1/view/utils/empty_space.dart';

class MyTextField extends StatelessWidget {
  final color;
  MyTextField({this.color});

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Theme(
              data: ThemeData(primarySwatch: color),
              child: TextField(
                minLines: 1,
                maxLines: 6,
                cursorColor: color,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    width: 60.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.insert_emoticon),
                        EmptySpace(horizontal: true, multiple: 0.5),
                        Icon(Icons.mic)
                      ],
                    ),
                  ),
                  contentPadding: EdgeInsets.only(
                      left: 10.0, top: 2.0, bottom: 2.0, right: 10.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: color, width: 1.5),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: "Type a message",
                ),
              ),
            ),
          ),
          EmptySpace(horizontal: true),
          InkWell(
            child: Icon(Icons.send, color: color),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
