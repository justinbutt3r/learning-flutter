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
}

List<Tweet> tweets = [
  Tweet(
      createdAt: 'Wed Oct 10 20:19:24 +0000 2018',
      id: 1050118621198921728,
      text:
          'To make room for more expression, we will now count all emojis as equal—including those with gender‍‍‍ ‍‍and skin t… https://t.co/MkGjXf9aXm',
      user: User(
          id: 6253282,
          screenName: 'twitterapi',
          profileImage:
              "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
  Tweet(
      createdAt: 'Wed Oct 10 20:19:24 +0000 2018',
      id: 1050118621198921728,
      text:
          'To make room for more expression, we will now count all emojis as equal—including those with gender‍‍‍ ‍‍and skin t… https://t.co/MkGjXf9aXm',
      user: User(
          id: 6253282,
          screenName: 'twitterapi',
          profileImage:
              "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
  Tweet(
      createdAt: 'Wed Oct 10 20:19:24 +0000 2018',
      id: 1050118621198921728,
      text:
          'To make room for more expression, we will now count all emojis as equal—including those with gender‍‍‍ ‍‍and skin t… https://t.co/MkGjXf9aXm',
      user: User(
          id: 6253282,
          screenName: 'twitterapi',
          profileImage:
              "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
  Tweet(
      createdAt: 'Wed Oct 10 20:19:24 +0000 2018',
      id: 1050118621198921728,
      text:
          'To make room for more expression, we will now count all emojis as equal—including those with gender‍‍‍ ‍‍and skin t… https://t.co/MkGjXf9aXm',
      user: User(
          id: 6253282,
          screenName: 'twitterapi',
          profileImage:
              "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
  Tweet(
      createdAt: 'Wed Oct 10 20:19:24 +0000 2018',
      id: 1050118621198921728,
      text:
          'To make room for more expression, we will now count all emojis as equal—including those with gender‍‍‍ ‍‍and skin t… https://t.co/MkGjXf9aXm',
      user: User(
          id: 6253282,
          screenName: 'twitterapi',
          profileImage:
              "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
];
