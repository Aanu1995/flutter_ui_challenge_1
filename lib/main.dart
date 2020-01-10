import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_challenge_1/view/utils/router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'UI Challenge 1',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoutes,
    );
  }
}
