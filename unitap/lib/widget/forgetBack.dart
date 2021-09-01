import 'package:flutter/material.dart';
import 'package:unitap/pages/newuser.page.dart';

class ForgetBack extends StatefulWidget {
  const ForgetBack({Key? key}) : super(key: key);

  @override
  _ForgetBackState createState() => _ForgetBackState();
}

class _ForgetBackState extends State<ForgetBack> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Container(
        alignment: Alignment.topRight,
        height: 20,
        child: Row(
          children: <Widget>[
            Text(
              'Remembered?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewUser()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
