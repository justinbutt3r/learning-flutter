import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/blocs/TweetListBloc.dart';
import 'package:my_app/models/tweet.dart';
import 'package:share/share.dart';

class ItemList extends StatelessWidget {
  final TweetListBloc tweetmanager = TweetListBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: tweetmanager.getTweetList,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        List<Tweet> _tweets = snapshot.data;
        bool _loading = snapshot.connectionState == ConnectionState.waiting;

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
      },
    );
  }
}
