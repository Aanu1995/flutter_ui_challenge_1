import 'package:flutter/material.dart';

import 'package:ui_challenge_1/model/message.dart';
import 'package:ui_challenge_1/view/utils/message_utils.dart';

import 'components/chat_page_message_box.dart';
import 'components/chat_page_profile_card.dart';
import 'components/chat_page_textfield.dart';

class ChatPage extends StatelessWidget {
  final chat;
  final color;
  ChatPage({this.chat, this.color});

  final List<Message> messageList = MessageUtils.messages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ProfileCard(
                chat: chat,
                color: color,
              ),
              Expanded(
                child: ListView.builder(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                  itemCount: messageList.length,
                  itemBuilder: (context, index) {
                    final message = messageList[index];
                    return Align(
                      alignment:
                          message.isMe ? Alignment.topRight : Alignment.topLeft,
                      child: MessageBox(
                        message: message,
                        color: color,
                      ),
                    );
                  },
                ),
              ),
              MyTextField(color: color)
            ],
          ),
        ),
      ),
    );
  }
}
