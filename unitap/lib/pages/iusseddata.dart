class iusseddata {
  int? srno;
  int? bookid;
  String? bookname;
  String? issuedate;
  String? returndate;
  int? remaining;

  iusseddata({
    this.srno,
    this.bookid,
    this.bookname,
    this.issuedate,
    this.returndate,
    this.remaining,
  });
  iusseddata.fromJson(Map<String, dynamic> json) {
    srno = json['srno'];
    bookid = json['bookid'];
    bookname = json['bookname'];
    issuedate = json['issuedate'];
    returndate = json['returndate'];
    remaining = json['remainingdays'];
  }
}
