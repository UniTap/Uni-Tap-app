import 'package:flutter/material.dart';

class ForgetVerticalText extends StatefulWidget {
  const ForgetVerticalText({Key? key}) : super(key: key);

  @override
  _ForgetVerticalTextState createState() => _ForgetVerticalTextState();
}

class _ForgetVerticalTextState extends State<ForgetVerticalText>
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
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'New Password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
