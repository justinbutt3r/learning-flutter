import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        title: Text('#100daysofcode'),
      ),
      // body is the majority of the screen.
      body: Center(
        child: Text('Hello, world!'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.list),
                  onPressed: () {},
                ),
                Text('List')
              ],
            )),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.speaker_phone),
                  onPressed: () {},
                ),
                Text('tweet')
              ],
            )),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.book),
                  onPressed: () {},
                ),
                Text('Rules')
              ],
            )),
          ],
        ),
      ),
    );
  }
}
