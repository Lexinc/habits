import 'package:flutter/material.dart';
import 'package:habits/presentation/widgets/main_wrapper.dart';

class MustHaveHabits extends StatefulWidget {
  final String title;

  const MustHaveHabits({super.key, required this.title}) : super();

  @override
  State<MustHaveHabits> createState() => _MustHaveHabitsState();
}

class _MustHaveHabitsState extends State<MustHaveHabits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: MainWrapper(child: Container()),
    );
  }
}
