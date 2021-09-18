class persondata {
  String? name;
  int? age;
  String? gender;
  int? enrno;
  String? photo;
  String? tweet;
  String? username;
  String? tweetimage;

  persondata(
      {this.name,
      this.age,
      this.gender,
      this.enrno,
      this.photo,
      this.tweet,
      this.username,
      this.tweetimage});

  persondata.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age '];
    gender = json['gender'];
    enrno = json['Enrollment number'];
    photo = json['photo'];
    tweet = json['tweet'];
    username = json['username'];
    tweetimage = json['tweetimage'];
  }
}
