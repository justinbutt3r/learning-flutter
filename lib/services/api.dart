import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app/models/tweet.dart';

class APIService {
  static String base = "http://localhost:3000";

  static Future getTweetList() async {
    http.Response response = await http.get('$base/twitter');

    if (response.statusCode == 200) {
      String content = response.body;
      List collection = json.decode(content)['data'];
      List<Tweet> items =
          collection.map((json) => Tweet.fromJson(json)).toList();
      return items;
    }

    return [];
  }
}
