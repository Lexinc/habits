import 'package:flutter/material.dart';
import 'package:habits/presentation/screens/adding_habbits/widgets/topics_list/topics_data.dart';

class TopicsList extends StatelessWidget {
  const TopicsList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final BorderRadius boxBorderRadius = BorderRadius.circular(10);
    const EdgeInsets boxMargin =
        EdgeInsets.symmetric(horizontal: 20, vertical: 12);

    TopicsData topicsData = TopicsData();
    List<Map<String, dynamic>> topicsList = topicsData.topicsList;
    return Expanded(
      child: Container(
        margin: boxMargin,
        child: Hero(
            tag: 'ListTile-Hero-Choose',
            child: Material(
              color: theme.primaryColor,
              child: ListView.builder(
                itemCount: topicsList.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> currentTopic = topicsList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: ListTile(
                      title: Text('${currentTopic['title']}'),
                      subtitle: Text(
                        '${currentTopic['subtitle']}',
                        style: theme.listTileTheme.subtitleTextStyle,
                      ),
                      shape:
                          RoundedRectangleBorder(borderRadius: boxBorderRadius),
                      tileColor: theme.cardTheme.color,
                      contentPadding: theme.listTileTheme.contentPadding,
                    ),
                  );
                },
              ),
            )),
      ),
    );
  }
}
