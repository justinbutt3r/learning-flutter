import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://loremflickr.com/360/360'),
            ),
            title: Text(
              "Username",
            ),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
            trailing: CircleAvatar(
                child: Center(
              child: Text(
                'share stuff',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            )),
          );
        });
  }
}
