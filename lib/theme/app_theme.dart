import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  // static const Color secundary = Colors.green;
  // static const Color cancel = Colors.red;

  static final ThemeData theme = ThemeData.light().copyWith(
    //color primary
    primaryColor: Colors.blue,

    //appBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //textButton theme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: AppTheme.primary)),
  );
}
