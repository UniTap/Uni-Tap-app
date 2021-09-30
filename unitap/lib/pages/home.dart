import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unitap/pages/feeds.dart';
import 'package:unitap/pages/college.dart';
import 'package:unitap/pages/chats.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark), //toolbarHeight: 100,
            centerTitle: true,

            //automaticallyImplyLeading: false,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Feeds",
                ),
                Tab(
                  text: "College",
                ),
                Tab(
                  text: "Chat",
                ),
              ],
            ),
            title: Text('Uni-Tap', style: GoogleFonts.righteous()),
          ),
          drawer: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Drawer(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(child: Text("SMIL RAJ THAKUR")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/dp2.jpg"),
                              ),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100)),
                              width: 51,
                              height: 51,
                            ),
                            Text("2013 1013 2064",
                                style: GoogleFonts.inconsolata(
                                    color: Colors.white, fontSize: 25)),
                            SizedBox(
                              height: 11,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "SEM: ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                    Text(
                                      "3",
                                      style: GoogleFonts.inconsolata(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 21,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Year: ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                    Text(
                                      "2021",
                                      style: GoogleFonts.inconsolata(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("Smil Raj Thakur",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 17)),
                                Spacer(),
                                Text("AIIE",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 17)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: const Color(0xffef9a9a),
                              offset: Offset(0, 5)),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.deepOrange,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Text("Login ID: Mr.Thakur",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Email: smil.raj.thakur@gmail.com",
                              style:
                                  GoogleFonts.montserrat(color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Mobile no.: 7487081401",
                                style: GoogleFonts.inconsolata(
                                    color: Colors.white)),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Address: Mars",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white)),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.deepOrange,
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: const Color(0xffef9a9a),
                              offset: Offset(0, 5)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        child: Center(
                            child: Text(
                          "My Violations",
                          style: GoogleFonts.montserrat(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 5)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        child: Center(
                            child: Text(
                          "Academic Records",
                          style: GoogleFonts.montserrat(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 5)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        child: Center(
                            child: Text(
                          "Help Desk",
                          style: GoogleFonts.montserrat(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 5)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        child: Center(
                            child: Text(
                          "UniTap support",
                          style: GoogleFonts.montserrat(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 5)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [FeedPage(), CollegePage(), ChatPage()],
          ),
        ),
      ),
    );
  }
}
