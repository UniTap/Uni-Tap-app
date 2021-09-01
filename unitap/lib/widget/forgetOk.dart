import 'package:flutter/material.dart';
import 'package:unitap/pages/home.dart';
import 'package:unitap/widget/inputEmail.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetOK extends StatefulWidget {
  const ForgetOK({Key? key}) : super(key: key);

  @override
  _ForgetOKState createState() => _ForgetOKState();
}

class _ForgetOKState extends State<ForgetOK> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrange,
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  const snackBar = SnackBar(
                      content: Text('Your Email has recieved new Password!'));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Center(
                  child: Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
