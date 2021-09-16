import 'dart:convert';

import 'package:flutter/material.dart';
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
      backgroundColor: Colors.white70,
      body: FutureBuilder(
          future: readjsondata(),
          builder: (context, data) {
            if (data.hasError) {
              return Text("error");
            } else if (data.hasData) {
              var items = data.data as List<persondata>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        //border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                            spreadRadius: -1.5,
                          )
                        ],
                      ),

                      height: 200,
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
                                  child: Text(
                                items[index].name.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ))
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 500,
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                // BoxShadow(
                                //   color: Colors.orange,
                                //   blurRadius: 5.0,
                                //   spreadRadius: -1.5,
                                // )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                items[index].tweet.toString(),
                                style: TextStyle(fontSize: 20.0),
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
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => persondata.fromJson(e)).toList();
  }
}
