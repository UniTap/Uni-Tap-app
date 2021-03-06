import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class NewTweet extends StatelessWidget {
  const NewTweet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      appBar: AppBar(
        title: Center(child: Text("New Notice")),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        //color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.only(bottom: 100),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      autofocus: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, labelText: "Title"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                          border: InputBorder.none, labelText: "Body"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // floatingActionButton: Row(
      //   //crossAxisAlignment: CrossAxisAlignment.start,
      //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.fromLTRB(35, 0, 0, 10),
      //       child: FloatingActionButton(
      //         onPressed: null,
      //         child: Icon(Icons.poll),
      //       ),
      //     ),
      //     Spacer(),
      //     // SizedBox(
      //     //   width: 100,
      //     // ),
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 10),
      //       child:
      //           FloatingActionButton(onPressed: null, child: Icon(Icons.image)),
      //     ),
      //     Spacer(),
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 10),
      //       child: FloatingActionButton(
      //         onPressed: null,
      //         child: Icon(Icons.send),
      //       ),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //   ],

      // ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        child: Row(
          children: [
            SpeedDial(
              curve: Curves.bounceIn,
              overlayOpacity: 0,
              animatedIcon: AnimatedIcons.menu_close,
              children: [
                SpeedDialChild(
                    child: Icon(Icons.poll),
                    backgroundColor: Colors.blue,
                    onTap: () {
                      print("hello");
                    }),
                SpeedDialChild(
                    child: Icon(Icons.image),
                    backgroundColor: Colors.yellow,
                    onTap: () {
                      print("world");
                    }),
              ],
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
