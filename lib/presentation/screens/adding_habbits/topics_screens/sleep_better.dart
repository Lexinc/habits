import 'package:flutter/material.dart';
import 'package:habits/presentation/widgets/main_wrapper.dart';

class SleepBetter extends StatefulWidget {
  final String title;

  const SleepBetter({super.key, required this.title}) : super();
  @override
  State<SleepBetter> createState() => _SleepBetterState();
}

class _SleepBetterState extends State<SleepBetter> {
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
