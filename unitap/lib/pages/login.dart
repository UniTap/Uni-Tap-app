import 'package:flutter/material.dart';
import 'package:unitap/pages/forgetpass.dart';
import 'package:unitap/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool nextpage = true;
  bool nextpage2 = true;

  movetohome(BuildContext context) async {
    // *************** Uncomment when deployed ***************
    // if (_formKey.currentState!.validate() &&
    //     nextpage == true &&
    //     nextpage2 == true) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => HomePage()));
    // }
    // *************** Uncomment when deployed ***************

    // *************** Development Code ***************
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
    // *************** Development Code  End ***************
  }

  movetoforgetpage(BuildContext context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgetPasswordPage()));
  }

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
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    //********** Header Part ***********//
                    // ROTATED TEXT
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w900,
                            ),
                          )),
                    ),
                    // HEADER TEXT
                    Padding(
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
                                'A world of possibility in an app',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),

                  //********** Form Part ***********//
                  // EMAIL INPUT
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 50, right: 50),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
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
                            nextpage = false;
                            const snackBar = SnackBar(
                                content: Text('Username cannot be empty!'));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            nextpage = true;
                          }
                        },
                      ),
                    ),
                  ),
                  // PASSWORD INPUT
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 50, right: 50, bottom: 15),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            nextpage2 = false;
                            const snackBar = SnackBar(
                                content: Text('Password cannot be empty!'));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else if (value.length < 8) {
                            nextpage2 = false;
                            const snackBar = SnackBar(
                                content: Text(
                                    'Password should be minimum 8 characters!'));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            nextpage2 = true;
                          }
                        },
                      ),
                    ),
                  ),

                  // LOGIN BUTTON
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, right: 50, left: 200, bottom: 15),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrange,
                            blurRadius:
                                10.0, // has the effect of softening the shadow
                            spreadRadius:
                                1.0, // has the effect of extending the shadow
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
                        onPressed: () {
                          movetohome(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                movetohome(context);
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
                  ),
                  //********** Form Over ***********//

                  // FORGET PASSWORD BUTTON
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 0, left: 0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrange,
                            blurRadius:
                                10.0, // has the effect of softening the shadow
                            spreadRadius:
                                1.0, // has the effect of extending the shadow
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
                        onPressed: () {
                          movetoforgetpage(context);
                        },
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
