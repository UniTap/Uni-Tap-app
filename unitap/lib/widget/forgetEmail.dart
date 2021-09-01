import 'package:flutter/material.dart';
import 'package:unitap/pages/home.dart';
import 'package:unitap/widget/button.dart';

class ForgetEmail extends StatefulWidget {
  const ForgetEmail({Key? key}) : super(key: key);

  @override
  _ForgetEmailState createState() => _ForgetEmailState();
}

class _ForgetEmailState extends State<ForgetEmail>
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
              labelText: 'Enter Email',
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
