import 'package:ui_challenge_1/model/message.dart';

class MessageUtils {
  static List<Message> messages = [
    Message(
      message: "My mum called me today. She asked after you.",
      time: "07:55",
      isMe: false,
    ),
    Message(message: "Wow. My regards to her oo", time: "07:55"),
    Message(message: "I will deliver your message", time: "07:58", isMe: false),
    Message(message: "Babe, how was your night?", time: "08:15", isMe: false),
    Message(message: "Hope you slept well?", time: "08:15", isMe: false)
  ];
}
