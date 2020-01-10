import 'package:flutter/material.dart';
import 'package:ui_challenge_1/view/components/clipper/dp_clipper.dart';
import 'package:ui_challenge_1/view/utils/empty_space.dart';

class TabItem extends StatelessWidget {
  final String title;
  final int index;
  final int notificationCount;
  const TabItem({this.title, this.index, this.notificationCount});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                EmptySpace(horizontal: true, multiple: 0.5),
                Container(
                  width: width * 0.06,
                  height: width * 0.06,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      ClipPath(
                        clipper: DiagonalClipper(),
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          child: Center(
                            child: Text(
                              "$notificationCount",
                              style: TextStyle(
                                fontSize: 8.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
