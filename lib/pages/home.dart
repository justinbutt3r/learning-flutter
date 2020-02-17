import 'package:flutter/material.dart';
import 'package:my_app/components/ItemList/ItemList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#100daysofcode'),
      ),
      body: ItemList(),
    );
  }
}
