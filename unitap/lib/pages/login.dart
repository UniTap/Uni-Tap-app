import 'package:flutter/material.dart';
import 'package:unitap/widget/button.dart';
import 'package:unitap/widget/first.dart';
import 'package:unitap/widget/forgetbutton.dart';
import 'package:unitap/widget/inputEmail.dart';
import 'package:unitap/widget/password.dart';
import 'package:unitap/widget/textLogin.dart';
import 'package:unitap/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                SizedBox(
                  height: 15,
                ),
                ForgetButton(),
                ButtonLogin(),
                SizedBox(
                  height: 15,
                ),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
