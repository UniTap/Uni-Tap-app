import 'package:flutter/material.dart';
import 'package:unitap/pages/feeds.dart';
import 'package:unitap/pages/college.dart';
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
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
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
            title:
                Center(child: Text('Uni-Tap', style: GoogleFonts.righteous())),
          ),
          body: const TabBarView(
            children: [FeedPage(), CollegePage(), Text("Chat")],
          ),
        ),
      ),
    );
  }
}
