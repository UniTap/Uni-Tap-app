import 'package:flutter/material.dart';
import 'package:unitap/pages/forgetpass.dart';

class ForgetButton extends StatefulWidget {
  const ForgetButton({Key? key}) : super(key: key);

  @override
  _ForgetButtonState createState() => _ForgetButtonState();
}

class _ForgetButtonState extends State<ForgetButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  movetoforgetpage(BuildContext context) async {
    //if (_formKey.currentState!.validate()) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgetPage()));
    // }
  }

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
      padding: const EdgeInsets.only(top: 0, right: 0, left: 0),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: 300,
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
                  movetoforgetpage(context);
                },
                child: Center(
                  child: Text(
                    "Can't remember Password?",
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
