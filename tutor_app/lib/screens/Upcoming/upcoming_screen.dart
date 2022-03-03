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
            UpcomingLeasson(
              date: '3/4/2022',
              time: "13:00 - 14:00",
              tutorName: "Dinh Phat",
              press: () {},
            ),
            UpcomingLeasson(
              date: '3/4/2022',
              time: "13:00 - 14:00",
              tutorName: "Dinh Phat",
              press: () {},
            ),
          ]),
        ));
  }
}
