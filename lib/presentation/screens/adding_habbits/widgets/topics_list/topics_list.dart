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

    final Set<Widget> widgetSet = {};
    for (Map<String, dynamic> item in topicsList) {
      widgetSet.add(Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          title: Text('${item['title']}'),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              '${item['subtitle']}',
              style: theme.listTileTheme.subtitleTextStyle,
            ),
          ),
          trailing: Image(
            image: AssetImage('${item['image']}'),
          ),
          shape: RoundedRectangleBorder(borderRadius: boxBorderRadius),
          tileColor: theme.cardTheme.color,
          contentPadding: theme.listTileTheme.contentPadding,
          onTap: () {},
        ),
      ));
    }
    final List<Widget> widgetList = widgetSet.toList();

    return Container(
      margin: boxMargin,
      child: Hero(
          tag: 'ListTile-Hero-Choose',
          child: Material(
              color: theme.primaryColor,
              child: Column(
                children: widgetList,
              ))),
    );
  }
}
