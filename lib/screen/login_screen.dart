import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  int days = 3;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Welcome to Login Screeen ',
            style: TextStyle(fontSize: 19, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
