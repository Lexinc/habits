// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Themes {
  final _darkTheme = ThemeData(
      iconTheme: IconThemeData(size: 20),
      cardTheme: CardTheme(
        color: Colors.grey[850],
      ),
      listTileTheme: ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        tileColor: Colors.grey[800],
        titleTextStyle: TextStyle(fontSize: 24),
        subtitleTextStyle: TextStyle(fontSize: 14, color: Colors.white70),
      ),
      appBarTheme: AppBarTheme(backgroundColor: Colors.grey[900]),
      primaryColor: Colors.grey[800],
      textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 18, color: Colors.white60)),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.indigo[700]),
      dividerColor: Colors.grey[600]);

  ThemeData get darkTheme {
    return _darkTheme;
  }
}
