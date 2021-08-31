import 'package:flutter/material.dart';
import 'package:unitap/widget/buttonNewUser.dart';
import 'package:unitap/widget/newEmail.dart';
import 'package:unitap/widget/newName.dart';
import 'package:unitap/widget/password.dart';
import 'package:unitap/widget/signup.dart';
import 'package:unitap/widget/textNew.dart';
import 'package:unitap/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
