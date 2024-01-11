// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/adding_habits.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // Icons.event_repeat
  // Icons.event
  // Icons.date_range
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size(100, 50),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            )),
        title: Text('Today'),
        centerTitle: true,
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: Container(
        color: theme.primaryColor,
      ),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: theme.floatingActionButtonTheme.backgroundColor,
            child: Icon(
              Icons.add,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddingHabits()));
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
