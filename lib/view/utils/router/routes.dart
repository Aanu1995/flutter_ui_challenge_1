import 'package:flutter/material.dart';
import 'package:ui_challenge_1/view/screens/chat/chat_page.dart';
import 'package:ui_challenge_1/view/screens/home_page.dart';
import 'package:ui_challenge_1/view/screens/profile_page.dart';

class Routes {
  static const String INITIALPAGE = "/";
  static const String HOMEPAGE = "/homepage";
  static const String PROFILEPAGE = "/profilepage";
  static const String CHATPAGE = "/chatpage";

  static Map<String, Widget Function(BuildContext)> get getRoutes => {
        INITIALPAGE: (BuildContext context) => HomePage(),
        HOMEPAGE: (BuildContext context) => HomePage(),
        PROFILEPAGE: (BuildContext context) => ProfilePage(),
        CHATPAGE: (BuildContext context) => ChatPage(),
      };
}
