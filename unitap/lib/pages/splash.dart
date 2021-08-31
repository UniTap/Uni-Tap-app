import 'package:flutter/material.dart';
import 'package:unitap/pages/login.dart';
// import 'package:unitap/routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Image.asset("images/logo_grp_icon.png")),
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
