// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/home_screen.dart';
import 'package:habits/presentation/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      theme: Themes().darkTheme,
      home: HomeScreen(),
    );
  }
}
