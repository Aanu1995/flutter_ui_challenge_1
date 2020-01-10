import 'package:flutter/material.dart';
export 'routes.dart';

class Router {
  static goToScreen({BuildContext context, String page}) {
    Navigator.pushNamed(context, page);
  }

  static goToWidget({BuildContext context, Widget page}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  static goBackToPreviousScreen({BuildContext context}) {
    Navigator.pop(context);
  }
}
