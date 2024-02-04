import 'package:flutter/material.dart';
import 'package:habits/presentation/widgets/main_wrapper.dart';

class ProductiveMorning extends StatefulWidget {
  final String title;

  const ProductiveMorning({super.key, required this.title}) : super();
  @override
  State<ProductiveMorning> createState() => _ProductiveMorningState();
}

class _ProductiveMorningState extends State<ProductiveMorning> {
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
