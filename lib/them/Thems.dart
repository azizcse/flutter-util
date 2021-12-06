import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonTheme:ButtonThemeData(
        buttonColor: Colors.blue
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonTheme:ButtonThemeData(
        buttonColor: Colors.red
    ),
  );
}