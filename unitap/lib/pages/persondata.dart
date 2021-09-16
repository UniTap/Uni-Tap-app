class persondata {
  String? name;
  int? age;
  String? gender;
  int? enrno;
  String? photo;
  String? tweet;

  persondata(
      {this.name, this.age, this.gender, this.enrno, this.photo, this.tweet});

  persondata.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age '];
    gender = json['gender'];
    enrno = json['Enrollment number'];
    photo = json['photo'];
    tweet = json['tweet'];
  }
}
