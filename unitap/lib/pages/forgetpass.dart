import 'package:flutter/material.dart';
import 'package:unitap/widget/button.dart';
import 'package:unitap/widget/first.dart';
import 'package:unitap/widget/forgetBack.dart';
import 'package:unitap/widget/forgetEmail.dart';
import 'package:unitap/widget/forgetOk.dart';
import 'package:unitap/widget/forgetverticaltext.dart';
import 'package:unitap/widget/forgot.dart';
import 'package:unitap/widget/inputEmail.dart';
import 'package:unitap/widget/password.dart';
import 'package:unitap/widget/textLogin.dart';
import 'package:unitap/widget/textforget.dart';
import 'package:unitap/widget/verticalText.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({Key? key}) : super(key: key);

  @override
  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.orange, Colors.deepOrange]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  ForgetVerticalText(),
                  TextForget(),
                ]),
                ForgetEmail(),
                ForgetOK(),
                ForgetBack(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
