class collegedata {
  String? topic;
  String? issue;
  String? name;
  DateTime? issue_date;
  DateTime? return_date;

  collegedata({
    this.topic,
    this.issue,
    this.name,
    this.issue_date,
    this.return_date,
  });

  collegedata.fromJson(Map<String, dynamic> json) {
    topic = json['topic'];
    issue = json['issue'];
    name = json['name'];
    issue_date = DateTime.parse(json['issue_date']);
    return_date = DateTime.parse(json['return_date']);
  }
}
