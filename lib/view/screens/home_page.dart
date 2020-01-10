import 'package:flutter/material.dart';
import 'package:ui_challenge_1/view/components/tab_item.dart';
import 'package:ui_challenge_1/view/screens/chat/chat_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Let's Connect",
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline.fontSize,
              color: Theme.of(context).accentColor,
            ),
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 6),
              child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.grey[300],
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20.0),
            tabs: <Widget>[
              TabItem(title: "Chats", index: 0, notificationCount: 50),
              TabItem(title: "Calls", index: 1, notificationCount: 1),
              TabItem(
                title: "Interests",
                index: 2,
                notificationCount: 76,
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[ChatListPage(), Container(), Container()],
          ),
        ),
      ),
    );
  }
}
