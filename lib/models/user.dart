class User {
  int id;
  String screenName;
  String profileImage;

  User({this.id, this.screenName, this.profileImage});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.screenName = json['screenName'];
    this.profileImage = json['profileImage'];
  }
}
