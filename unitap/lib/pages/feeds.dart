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
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        child: Row(
                          children: [
                            Text(items[index].name.toString()),
                            Text(items[index].age.toString()),
                            Text(items[index].gender.toString()),
                            Text(items[index].enrno.toString()),
                          ],
                        ),
                      ),
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
