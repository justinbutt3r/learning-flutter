import 'package:flutter/material.dart';
import 'package:my_app/models/tweet.dart';
import 'package:share/share.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: tweets.length,
        itemBuilder: (context, i) {
          Tweet tweet = tweets[i];
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
