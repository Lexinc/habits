class TopicsData {
  final topics = <Map<String, dynamic>>[
    {
      "navigatorName": 'mustHaveHabits',
      "title": 'Must-have habits',
      "subtitle": 'Small habits, big results',
      "image": 'assets/img/icons8-group-of-fruits-96.png',
      "topicList": [
        {
          "title": "",
          "subtitle": "",
          "repeatability": "",
        }
      ]
    },
    {
      "navigatorName": 'productiveMorning',
      "title": 'Productive morning',
      "subtitle": 'Work hard in a smart way',
      "image": 'assets/img/icons8-wake-up-with-sun-96.png',
      "topicList": [
        {
          "title": "",
          "subtitle": "",
          "repeatability": "",
        }
      ]
    },
    {
      "navigatorName": 'sleepBetter',
      "title": 'Sleep better',
      "subtitle": 'Unwind, renew, embrace serenity',
      "image": 'assets/img/icons8-sleep-96.png',
      "topicList": [
        {
          "title": "",
          "subtitle": "",
          "repeatability": "",
        }
      ]
    },
  ];
  List<Map<String, dynamic>> get topicsList => topics;
}
