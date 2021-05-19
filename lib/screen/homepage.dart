import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  @override
  int days = 10;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to day $days'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          child: Text('Welcome to flutter this is day  $days '),
        ),
      ),
    );
  }
}
