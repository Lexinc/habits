import 'package:flutter/material.dart';
import 'package:habits/presentation/widgets/main_wrapper.dart';

class RepetitiveHabit extends StatefulWidget {
  final String title;

  const RepetitiveHabit({super.key, required this.title}) : super();

  @override
  State<RepetitiveHabit> createState() => _RepetitiveHabitState();
}

class _RepetitiveHabitState extends State<RepetitiveHabit> {
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
