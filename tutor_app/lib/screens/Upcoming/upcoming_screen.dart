import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Upcoming/widgets/upcoming_lesson.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Column(children: [
            UpcomingLeasson(),
            UpcomingLeasson(),
            UpcomingLeasson(),
            UpcomingLeasson(),
          ]),
        ));
  }
}
