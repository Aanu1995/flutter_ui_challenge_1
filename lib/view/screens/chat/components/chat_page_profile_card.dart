import 'package:flutter/material.dart';

import 'package:ui_challenge_1/view/components/display_picture.dart';
import 'package:ui_challenge_1/view/screens/profile_page.dart';
import 'package:ui_challenge_1/view/utils/empty_space.dart';
import 'package:ui_challenge_1/view/utils/router/router.dart';

class ProfileCard extends StatelessWidget {
  final Color color;
  final chat;

  const ProfileCard({this.chat, this.color});

  static final TextStyle _subTitleStyle = TextStyle(
    fontSize: 11.0,
    color: Colors.black38,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final myContext = Theme.of(context);
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.topCenter,
              icon: Icon(
                Icons.arrow_back,
                color: color,
              ),
              onPressed: () => Router.goBackToPreviousScreen(context: context),
            ),
            EmptySpace(horizontal: true, multiple: 1.5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FittedBox(
                    child: Text(
                      chat.name,
                      style: TextStyle(
                        color: myContext.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: myContext.primaryTextTheme.headline.fontSize,
                      ),
                    ),
                  ),
                  EmptySpace(multiple: 0.5),
                  Text(
                    chat.about,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                    ),
                  ),
                  EmptySpace(multiple: 2.0),
                  Text(
                    "Last Seen ${chat.lastSeen}",
                    style: _subTitleStyle,
                  ),
                ],
              ),
            ),
            EmptySpace(horizontal: true, multiple: 4),
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
            EmptySpace(
              horizontal: true,
              multiple: 3.0,
            )
          ],
        ),
      ),
    );
  }
}
