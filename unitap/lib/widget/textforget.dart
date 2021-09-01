import 'package:flutter/material.dart';

class TextForget extends StatefulWidget {
  const TextForget({Key? key}) : super(key: key);

  @override
  _TextForgetState createState() => _TextForgetState();
}

class _TextForgetState extends State<TextForget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        // color: Colors.orange[300],
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                'Enter Email for Recovery',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
