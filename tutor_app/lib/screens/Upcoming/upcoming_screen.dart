import 'package:flutter/material.dart';
import 'package:tutor_app/models/schedule.dart';
import 'package:intl/intl.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Conference/conference_screen.dart';
import 'package:tutor_app/screens/Tutor/tutor_manager.dart';
import 'package:tutor_app/screens/Upcoming/schedule_manager.dart';
import 'package:tutor_app/screens/Upcoming/widgets/upcoming_lesson.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({Key key}) : super(key: key);

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  List<Schedule> upcomingList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ScheduleManager.fetchUpcoming().then((value) {
      setState(() {
        upcomingList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Column(children: [
            ...List.generate(upcomingList.length, (index) {
              Schedule temp = upcomingList[index];
              return UpcomingLeasson(
                tutorAvatar: temp.scheduleDetailInfo.tutorInfo.avatar,
                tutorName: temp.scheduleDetailInfo.tutorInfo.name,
                date: DateFormat.yMd()
                    .format(temp.scheduleDetailInfo.createdAt)
                    .toString(),
                time: temp.scheduleDetailInfo.startPeriod +
                    ' - ' +
                    temp.scheduleDetailInfo.endPeriod,
                press: () {},
              );
            })
          ]),
        ));
  }
}
