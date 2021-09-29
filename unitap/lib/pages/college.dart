import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:unitap/pages/collegedata.dart';
import 'package:flutter/services.dart' as rootBundle;

class CollegePage extends StatefulWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  _CollegePageState createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: FutureBuilder(
          future: readjsondata(),
          builder: (context, data) {
            if (data.hasError) {
              return Text(data.error.toString());
            } else if (data.hasData) {
              var items = data.data as List<collegedata>;
              return ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrange[300],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index].topic.toString(),
                                      style: GoogleFonts.raleway(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    Text(
                                      items[index].name.toString(),
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("Issue Date : " +
                                        DateFormat("dd-MM-yyyy").format(
                                            DateTime.parse(items[index]
                                                .issue_date
                                                .toString()))),
                                    Text("Return Date : " +
                                        DateFormat("dd-MM-yyyy").format(
                                            DateTime.parse(items[index]
                                                .return_date
                                                .toString()))),
                                  ],
                                ),
                                margin: EdgeInsets.all(20),
                              )
                            ],
                          ),
                        ],
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

  Future<List<collegedata>> readjsondata() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('lib/assets/local_json/college.json');
    final list = json.decode(jsondata) as List;
    var unsorted = list.map((e) => collegedata.fromJson(e)).toList();
    // TODO: Sort the list according to issue date
    // print(unsorted[1].issue_date);
    // unsorted.sort((a, b) {
    //   var date1 = a["issue_date"].compareTo(b["issue_date"]);
    // });
    return unsorted;
  }
}
