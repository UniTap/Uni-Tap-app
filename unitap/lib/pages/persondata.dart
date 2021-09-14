class persondata {
  String? name;
  int? age;
  String? gender;
  int? enrno;

  persondata({this.name, this.age, this.gender, this.enrno});

  persondata.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age '];
    gender = json['gender'];
    enrno = json['Enrollment number'];
  }
}
