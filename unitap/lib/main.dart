import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unitap/pages/Academicrecords.dart';
import 'package:unitap/pages/canteen.dart';
import 'package:unitap/pages/feeds.dart';
import 'package:unitap/pages/forgetpass.dart';
import 'package:unitap/pages/library.dart';
import 'package:unitap/pages/newtweet.dart';
import 'package:unitap/pages/chats.dart';
import 'package:unitap/pages/splash.dart';
import 'package:unitap/pages/login.dart';
import 'package:unitap/pages/home.dart';
import 'package:unitap/pages/sports.dart';
import 'package:unitap/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark, // transparent status bar
  ));
  runApp(UniTap());
}

class UniTap extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uni-Tap',
      // theme: ThemeData.dark(),
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: MyRoutes.splashRoute,
      routes: {
        MyRoutes.splashRoute: (context) => SplashPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.forgetRoute: (context) => ForgetPasswordPage(),
        MyRoutes.feedPage: (context) => FeedPage(),
        MyRoutes.chatsRoute: (context) => ChatPage(),
        MyRoutes.newtweet: (context) => NewTweet(),
        MyRoutes.academicrecord: (context) => AcadRec(),
        MyRoutes.canteen: (context) => CateenPage(),
        MyRoutes.library: (context) => LibraryPage(),
        MyRoutes.sports: (context) => SportsPage(),
      },
    );
  }
}
