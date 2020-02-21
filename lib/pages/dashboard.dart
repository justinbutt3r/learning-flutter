import 'package:flutter/material.dart';
import 'package:my_app/helpers/formatDate.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle bodyTheme = Theme.of(context).textTheme.headline;

    DateTime startDate = DateTime.utc(2020, 02, 11);
    DateTime endDate = startDate.add(Duration(days: 100));

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text('Dashboard:',
                  style: Theme.of(context).textTheme.display2)),
          Center(
            child: Text(
              'DAY:',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          Center(
            child: Text(
              '${DateTime.now().difference(startDate).inDays}',
              style: Theme.of(context).textTheme.display4,
            ),
          ),
          Center(
            child: Text(
              "${formatDate(startDate)} - ${formatDate(endDate)}",
              style: bodyTheme,
            ),
          ),
          Container(
              padding: EdgeInsets.all(100),
              child: Center(
                  child: Transform.scale(
                scale: 4,
                child: CircularProgressIndicator(
                  value: DateTime.now().difference(startDate).inDays / 100,
                  backgroundColor: Colors.lime[100],
                  valueColor: AlwaysStoppedAnimation(Colors.lime[500]),
                  strokeWidth: 10.0,
                ),
              )))
        ],
      ),
    );
  }
}
