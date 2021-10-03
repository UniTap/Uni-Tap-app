import 'package:flutter/material.dart';
import 'package:unitap/pages/issued.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Library "),
          bottom: TabBar(
            tabs: [
              Tab(text: "Issued"),
              Tab(
                text: "History",
              ),
              Tab(
                text: "Available",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [IssuedPage(), Text("history"), Text("available")],
        ),
      ),
    );
  }
}
