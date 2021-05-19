import 'package:flutter/material.dart';
import 'package:flutter_catalog/screen/homepage.dart';
import 'package:flutter_catalog/screen/login_screen.dart';
import 'package:flutter_catalog/screen/ragister.dart';
import 'package:flutter_catalog/utils/routs.dart';
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
      initialRoute: '/ragisterPage',
      routes: {
        MyRouts.homeRouts: (context) => HomePage(),
        "/": (context) => HomePage(),
        "/loginPage": (context) => Loginpage(),
        "/ragisterPage": (context) => RagisterPage()
      },
      //home: HomePage(),
    );
  }
}
