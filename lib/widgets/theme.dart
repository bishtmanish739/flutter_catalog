import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.deepPurple,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme));
  static ThemeData darTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
