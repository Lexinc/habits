import 'package:flutter/material.dart';
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
            color: Colors.amber,
            height: 20,
            width: double.infinity,
          ),
          Container(
            color: Colors.red,
            height: 20,
            width: double.infinity,
          ),
          Container(
            color: Colors.green,
            height: 20,
            width: double.infinity,
          )
        ],
      )),
    );
    ;
  }
}
