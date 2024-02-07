import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/adding_habbits/widgets/divider_text_title.dart';
import 'package:habits/presentation/widgets/main_wrapper.dart';

class OneTimeTask extends StatefulWidget {
  final String title;

  const OneTimeTask({super.key, required this.title});

  @override
  State<OneTimeTask> createState() => _OneTimeTaskState();
}

class _OneTimeTaskState extends State<OneTimeTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: MainWrapper(
          child: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const DividerTextTitle(text: 'Name of habit')),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              style: const TextStyle(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const DividerTextTitle(text: 'Description')),
        ],
      )),
    );
  }
}
