import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
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
            title: const Text('Uni-Tap'),
          ),
          body: const TabBarView(
            children: [Text("Feeds"), Text("College"), Text("Chat")],
          ),
        ),
      ),
    );
  }
}
