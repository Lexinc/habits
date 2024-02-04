import 'package:flutter/material.dart';

class MainWrapper extends StatelessWidget {
  final Widget child;
  const MainWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const EdgeInsets boxMargin = EdgeInsets.symmetric(horizontal: 20);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Container(
              color: theme.primaryColor,
              child: Container(margin: boxMargin, child: child),
            )),
      );
    });
  }
}
