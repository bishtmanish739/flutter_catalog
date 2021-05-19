import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  int days = 6;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to day $days'),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to flutter this is day  $days '),
        ),
      ),
    );
  }
}
