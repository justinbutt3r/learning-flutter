import 'package:my_app/models/user.dart';

class Tweet {
  String createdAt;
  int id;
  String text;
  User user;

  Tweet({
    this.createdAt,
    this.id,
    this.text,
    this.user,
  });

  Tweet.fromJson(Map<String, dynamic> json) {
    this.createdAt = json['createdAt'];
    this.id = json['id'];
    this.text = json['text'];
    this.user = User.fromJson(json['user']);
  }
}
