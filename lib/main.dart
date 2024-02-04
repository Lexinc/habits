// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/adding_habbits/topics_screens/must_have_habits.dart';
import 'package:habits/presentation/screens/adding_habbits/topics_screens/productive_morning.dart';
import 'package:habits/presentation/screens/adding_habbits/topics_screens/sleep_better.dart';
import 'package:habits/presentation/screens/home_screen.dart';
import 'package:habits/presentation/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/mustHaveHabits': (context) => MustHaveHabits(
              title: 'Mast Have Habits',
            ),
        '/productiveMorning': (context) => ProductiveMorning(
              title: 'Productive Morning',
            ),
        '/sleepBetter': (context) => SleepBetter(
              title: 'Sleep Better',
            ),
      },
      theme: Themes().darkTheme,
    );
  }
}
