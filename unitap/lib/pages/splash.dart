import 'package:flutter/material.dart';
import 'package:unitap/pages/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool animation = false;
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    setState(() {
      animation = true;
    });
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("images/logo_grp_icon.png"),
            ),
            Container(
              width: 150,
              child: LinearProgressIndicator(
                color: Colors.orange,
                backgroundColor: Colors.orange[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
