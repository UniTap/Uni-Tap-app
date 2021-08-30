import 'package:flutter/material.dart';
import 'package:unitap/pages/home.dart';
import 'package:unitap/pages/splash.dart';
import 'package:unitap/routes/routes.dart';

void main() {
  runApp(UniTap());
}

class UniTap extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.splashRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.splashRoute: (context) => SplashPage(),
      },
    );
  }
}
