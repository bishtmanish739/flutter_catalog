import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  int days = 4;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          Text(
            'Welcome to Login Screeen ',
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email', labelText: 'Enter Your Email '),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'password ', labelText: 'Enter Your password '),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print('hello ');
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
