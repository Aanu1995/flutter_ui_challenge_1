import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:ui_challenge_1/view/components/clipper/profile_clipper.dart';
import 'package:ui_challenge_1/view/utils/empty_space.dart';
import 'package:ui_challenge_1/view/utils/router/router.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String about;
  final String image;
  ProfilePage({this.name, this.about, this.image});
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.transparent,
            child: ClipPath(
              clipper: ProfileClipper2(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      color.withOpacity(0.8),
                      color.withOpacity(0.9),
                      color.withOpacity(0.9),
                      color,
                      color
                    ],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UserProfileDetails(), // This displays the name and about of the user
                  EmptySpace(multiple: 5.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hobbies(title: "Media", icon: Icons.photo),
                        Hobbies(title: "Interests", icon: Icons.radio),
                        Hobbies(
                          title: "Chat Preferences",
                          icon: Icons.person_add,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // This is the iconButton to back to go back to previous page
          Positioned(
            child: SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: InkWell(
                  child: CircleAvatar(
                    backgroundColor: Colors.white24,
                    radius: 30.0,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                  onTap: () => Router.goBackToPreviousScreen(context: context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfileDetails extends StatelessWidget {
  final TextStyle _subTitleStyle = TextStyle(
    fontSize: 10.0,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "IceCream",
                style: TextStyle(
                  color: Colors.white,
                  fontSize:
                      Theme.of(context).primaryTextTheme.display1.fontSize,
                ),
              ),
              EmptySpace(multiple: 0.5),
              Text(
                "Last Seen 09:17",
                style: _subTitleStyle,
              )
            ],
          ),
          EmptySpace(multiple: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.only(top: 12.0, bottom: 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "I'm always grateful for life and looking forward to where it takes me.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                      ),
                    ),
                    EmptySpace(multiple: 0.5),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Last Updated Today",
                        style: _subTitleStyle,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Hobbies extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;
  const Hobbies({this.title, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(
            color: Colors.white38,
            thickness: 1.5,
          ),
          InkWell(
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                ),
                EmptySpace(horizontal: true, multiple: 1.2),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            onTap: onTap,
          )
        ],
      ),
    );
  }
}
