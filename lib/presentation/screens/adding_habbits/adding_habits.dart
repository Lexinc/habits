// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/adding_habbits/adding_screens/one_time_task.dart';
import 'package:habits/presentation/screens/adding_habbits/adding_screens/repetitive_habit.dart';
import 'package:habits/presentation/screens/adding_habbits/widgets/divider_text_title.dart';
import 'package:habits/presentation/screens/adding_habbits/widgets/topics_list/topics_list.dart';
import 'package:habits/presentation/widgets/main_wrapper.dart';

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
    const EdgeInsets boxMargin = EdgeInsets.symmetric(vertical: 12);
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
        body: MainWrapper(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: DividerTextTitle(
                    text: 'Create your own',
                  )),
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
                          contentPadding: theme.listTileTheme.contentPadding,
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
                          titleTextStyle: theme.listTileTheme.titleTextStyle,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    RepetitiveHabit(title: 'Repetitive Task'),
                              ),
                            );
                          },
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
                          titleTextStyle: theme.listTileTheme.titleTextStyle,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OneTimeTask(
                                  title: 'One Time Task',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: DividerTextTitle(text: 'Or choose from these topics')),
              TopicsList(),
            ],
          ),
        ));
  }
}
