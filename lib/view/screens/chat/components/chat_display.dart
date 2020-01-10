import 'dart:math';

import 'package:flutter/material.dart';

import 'package:ui_challenge_1/view/components/clipper/dp_clipper.dart';
import 'package:ui_challenge_1/view/components/display_picture.dart';
import 'package:ui_challenge_1/view/screens/chat/chat_page.dart';
import 'package:ui_challenge_1/view/screens/profile_page.dart';
import 'package:ui_challenge_1/view/utils/empty_space.dart';
import 'package:ui_challenge_1/view/utils/router/router.dart';

class ChatDisplay extends StatelessWidget {
  final chat;
  ChatDisplay({this.chat});

  final random = Random();
  final List<Color> randomColor = [
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.brown,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    final colorIndex = random.nextInt(randomColor.length);
    final color = randomColor[colorIndex];
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => Router.goToWidget(
        context: context,
        page: ChatPage(chat: chat, color: color),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 16.0, right: 21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(height: 0),
            Container(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          chat.name,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        EmptySpace(),
                        Text(
                          chat.lastMessage,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        EmptySpace(multiple: 0.5),
                        Text(
                          chat.lastMessageTime ?? "08:15",
                          style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  EmptySpace(horizontal: true),
                  Stack(
                    children: <Widget>[
                      InkWell(
                        child: DisplayPicture(
                          color: color,
                          image: chat.image,
                        ),
                        onTap: () => Router.goToWidget(
                          context: context,
                          page: ProfilePage(
                            name: chat.name,
                            image: chat.image,
                          ),
                        ),
                      ),
                      chat.unRead > 0
                          ? Positioned(
                              top: 4.0,
                              left: 4.0,
                              child: SizedBox(
                                width: width * 0.05,
                                height: width * 0.05,
                                child: ClipPath(
                                  clipper: DiagonalClipper(),
                                  child: Container(
                                      color: Theme.of(context).accentColor,
                                      child: Center(
                                        child: Text(
                                          "${chat.unRead}",
                                          style: TextStyle(
                                            fontSize: 8.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                ),
                              ))
                          : Offstage()
                    ],
                  )
                ],
              ),
            ),
            EmptySpace(multiple: 1.5)
          ],
        ),
      ),
    );
  }
}
