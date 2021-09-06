import 'package:flutter/material.dart';

class InputEmail extends StatefulWidget {
  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Form(
          child: TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.orange,
              labelText: 'Name',
              labelStyle: TextStyle(
                color: Colors.white70,
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "email cannot be empty";
              }
            },
          ),
        ),
      ),
    );
  }
}
