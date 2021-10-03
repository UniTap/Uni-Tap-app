import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart' as rootBundle;
import 'package:unitap/pages/iusseddata.dart';
import 'package:unitap/routes/routes.dart';

class IssuedPage extends StatefulWidget {
  const IssuedPage({Key? key}) : super(key: key);

  @override
  _IssuedPageState createState() => _IssuedPageState();
}

class _IssuedPageState extends State<IssuedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.newtweet);
        },
        child: Icon(Icons.edit),
      ),
      backgroundColor: const Color(0xfff3f3f3),
      body: FutureBuilder(
          future: readjsondata(),
          builder: (context, data) {
            if (data.hasError) {
              return Text("error");
            } else if (data.hasData) {
              var items = data.data as List<iusseddata>;

              return ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("Book Name: " +
                                items[index].bookname.toString()),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                                "Book ID: " + items[index].bookid.toString()),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("Issue Date: " +
                                    items[index].issuedate.toString()),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("Return Date: " +
                                    items[index].returndate.toString()),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                      items[index].remaining.toString() +
                                          " Days left!"),
                                ),
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<List<iusseddata>> readjsondata() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('lib/assets/local_json/issued.json');
    final list = json.decode(jsondata) as List;

    return list.map((e) => iusseddata.fromJson(e)).toList();
  }
}
