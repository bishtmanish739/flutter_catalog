import 'package:flutter/material.dart';
import 'package:flutter_catalog/screen/homepage.dart';
import 'package:flutter_catalog/screen/login_screen.dart';
import 'screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/loginPage',
      routes: {
        "/homePage": (context) => HomePage(),
        "/": (context) => HomePage(),
        "/loginPage": (context) => Loginpage()
      },
      //home: HomePage(),
    );
  }
}
