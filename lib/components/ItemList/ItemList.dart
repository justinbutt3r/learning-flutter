import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/models/tweet.dart';
import 'package:share/share.dart';
import 'package:http/http.dart' as http;

class ItemList extends StatefulWidget {
  ItemList({Key key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Tweet> _tweets = [];
  bool _loading = true;

  Future loadMessages() async {
    var response = await http.get('http://localhost:3000/twitter');
    if (response.statusCode == 200) {
      String content = response.body;
      List collection = json.decode(content)['data'];
      List<Tweet> items =
          collection.map((json) => Tweet.fromJson(json)).toList();

      setState(() {
        _tweets = items;
        _loading = false;
      });
    }
  }

  void initState() {
    loadMessages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: _loading ? EdgeInsets.all(0) : EdgeInsets.all(16.0),
        itemCount: _loading ? 1 : _tweets.length,
        itemBuilder: (context, i) {
          if (_loading) {
            return LinearProgressIndicator(
              backgroundColor: Colors.blue[200],
            );
          }
          Tweet tweet = _tweets[i];
          return ListTile(
              contentPadding: EdgeInsets.all(15.0),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(tweet.user.profileImage),
              ),
              title: Text(
                tweet.user.screenName,
              ),
              subtitle: Text(tweet.text),
              trailing: GestureDetector(
                onTap: () {
                  Share.share(
                      'https://twitter.com/${tweet.user.screenName}/status/${tweet.id}');
                },
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Center(
                      child: Icon(
                        Icons.share,
                        color: Theme.of(context).primaryColor,
                      ),
                    )),
              ));
        });
  }
}
