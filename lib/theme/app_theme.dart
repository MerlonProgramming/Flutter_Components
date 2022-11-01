import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData theme = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.blue,
      //appBar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));
}
