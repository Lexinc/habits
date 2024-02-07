import 'package:flutter/material.dart';

class DividerTextTitle extends StatelessWidget {
  final String text;
  const DividerTextTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(children: [
      Expanded(
          child: Divider(
        color: theme.dividerColor,
      )),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          text,
          style: theme.textTheme.headlineSmall,
        ),
      ),
      Expanded(
          child: Divider(
        color: theme.dividerColor,
      ))
    ]);
  }
}
