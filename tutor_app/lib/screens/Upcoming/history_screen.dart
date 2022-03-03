import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Upcoming/widgets/upcoming_lesson.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              child: Column(children: [
                Text('Total learning time: '),
                UpcomingLeasson(),
                UpcomingLeasson(),
                UpcomingLeasson(),
                UpcomingLeasson(),
              ]),
            )));
  }
}
