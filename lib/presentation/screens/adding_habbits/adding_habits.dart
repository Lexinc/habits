// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/adding_habbits/widgets/topics_list/topics_list.dart';

class AddingHabits extends StatefulWidget {
  const AddingHabits({super.key});

  @override
  State<AddingHabits> createState() => _AddingHabitsState();
}

class _AddingHabitsState extends State<AddingHabits> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final BorderRadius boxBorderRadius = BorderRadius.circular(10);
    const EdgeInsets boxMargin =
        EdgeInsets.symmetric(horizontal: 20, vertical: 12);
    const double decorationIconSize = 45;
    const double navigationIconSize = 30;
    const Color createListTrailingColor = Colors.grey;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        title: Text('Create'),
        centerTitle: true,
        leading: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Back',
              style: TextStyle(fontSize: 18),
            )),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Container(
              color: theme.primaryColor,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(children: [
                      Expanded(
                          child: Divider(
                        color: theme.dividerColor,
                      )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Create your own',
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: theme.dividerColor,
                      ))
                    ]),
                  ),
                  Hero(
                    tag: 'ListTile-Hero-Create',
                    child: Material(
                      color: theme.primaryColor,
                      child: Column(
                        children: [
                          Container(
                            margin: boxMargin,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: boxBorderRadius),
                              tileColor: theme.cardTheme.color,
                              contentPadding:
                                  theme.listTileTheme.contentPadding,
                              leading: Icon(
                                Icons.calendar_month,
                                size: decorationIconSize,
                                color: Color.fromARGB(255, 0, 182, 206),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                size: navigationIconSize,
                                color: createListTrailingColor,
                              ),
                              title: Text('Repetitive habit'),
                              titleTextStyle:
                                  theme.listTileTheme.titleTextStyle,
                              onTap: () {},
                            ),
                          ),
                          Container(
                            margin: boxMargin,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: boxBorderRadius),
                              tileColor: theme.cardTheme.color,
                              leading: Icon(
                                Icons.event_available,
                                size: decorationIconSize,
                                color: Colors.amber[800],
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                size: navigationIconSize,
                                color: createListTrailingColor,
                              ),
                              title: Text('One time task'),
                              titleTextStyle:
                                  theme.listTileTheme.titleTextStyle,
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 5),
                    child: Row(children: [
                      Expanded(
                          child: Divider(
                        color: theme.dividerColor,
                      )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or choose from these topics',
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: theme.dividerColor,
                      ))
                    ]),
                  ),
                  TopicsList(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
