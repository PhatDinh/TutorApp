import 'package:flutter/material.dart';
import 'package:tutor_app/models/schedule.dart';
import 'package:intl/intl.dart';
import 'package:tutor_app/screens/Conference/conference_screen.dart';
import 'package:tutor_app/screens/Upcoming/widgets/upcoming_lesson.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Column(children: [
            ...List.generate(ScheduleDummy.offData.length, (index) {
              Schedule temp = ScheduleDummy.offData[index];
              final start = DateTime.fromMillisecondsSinceEpoch(
                  int.parse(temp.startTime));
              final end =
                  DateTime.fromMillisecondsSinceEpoch(int.parse(temp.endTime));
              return UpcomingLeasson(
                tutorName: 'abc',
                date: DateFormat.yMd().format(start).toString(),
                time: DateFormat.Hms().format(start).toString() +
                    ' - ' +
                    DateFormat.Hms().format(end).toString(),
                press: () {},
              );
            })
          ]),
        ));
  }
}
