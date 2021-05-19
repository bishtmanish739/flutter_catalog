import 'package:flutter/material.dart';
import 'package:flutter_catalog/screen/homepage.dart';
import 'package:flutter_catalog/screen/login_screen.dart';
import 'package:flutter_catalog/screen/ragister.dart';
import 'package:flutter_catalog/utils/routs.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouts.homeRouts,
      routes: {
        MyRouts.homeRouts: (context) => HomePage(),
        "/": (context) => HomePage(),
        MyRouts.loginRouts: (context) => Loginpage(),
        MyRouts.ragisterRouts: (context) => RagisterPage()
      },
      //home: HomePage(),
    );
  }
}
