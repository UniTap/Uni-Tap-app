import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unitap/pages/persondata.dart';
import 'package:flutter/services.dart' as rootBundle;

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: FutureBuilder(
          future: readjsondata(),
          builder: (context, data) {
            if (data.hasError) {
              return Text("error");
            } else if (data.hasData) {
              var items = data.data as List<persondata>;
              return ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        //color: Colors.yellow,
                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(20),

                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     blurRadius: 5.0,
                        //     spreadRadius: 1.0,
                        //   )
                        // ],
                      ),

                      // height: (items[index].tweetimage.toString() != "")
                      //     ? 350
                      //     : 200,
                      //alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.fromLTRB(15, 15, 10, 15),
                                child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        items[index].photo.toString())),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              Container(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[index].name.toString(),
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      items[index].username.toString(),
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ))
                            ],
                          ),
                          Container(
                            // height: (items[index].tweetimage.toString() != "")
                            //     ? 210
                            //     : 110,
                            //constraints: BoxConstraints(minHeight: 100),
                            width: 500,
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //color: const Color(0xfff3f3f3),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                // BoxShadow(
                                //   color: Colors.orange,
                                //   blurRadius: 5.0,
                                //   spreadRadius: -1.5,
                                // )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[index].tweet.toString(),
                                      style: GoogleFonts.roboto()),
                                  (items[index].tweetimage.toString() != "")
                                      ? SizedBox(
                                          height: 10,
                                        )
                                      : SizedBox(),
                                  (items[index].tweetimage.toString() != "")
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image(
                                            image: NetworkImage(items[index]
                                                .tweetimage
                                                .toString()),
                                            //height: 150,
                                          ),
                                        )
                                      : Text(""),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<List<persondata>> readjsondata() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('lib/assets/local_json/person.json');
    final list = json.decode(jsondata) as List;

    return list.map((e) => persondata.fromJson(e)).toList();
  }
}
