import 'package:flutter/material.dart';

import 'package:ui_challenge_1/model/chat.dart';
import 'package:ui_challenge_1/view/utils/chat_utils.dart';

import 'components/chat_display.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  List<Chat> chats;
  @override
  void initState() {
    super.initState();
    chats = ChatUtils.chats;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 16.0),
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatDisplay(chat: chat);
      },
    );
  }
}
