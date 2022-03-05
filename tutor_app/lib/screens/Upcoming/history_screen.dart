import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Upcoming/widgets/upcoming_lesson.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Seassion History"),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              child: Column(children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Total learning time: '),
                  ),
                ),
                UpcomingLeasson(
                  date: '3/4/2022',
                  time: "13:00 - 14:00",
                  tutorName: "Dinh Phat",
                  isHistory: true,
                  press: () {},
                ),
                UpcomingLeasson(
                  date: '3/4/2022',
                  time: "13:00 - 14:00",
                  tutorName: "Dinh Phat",
                  isHistory: true,
                  press: () {},
                ),
                UpcomingLeasson(
                  date: '3/4/2022',
                  time: "13:00 - 14:00",
                  tutorName: "Dinh Phat",
                  isHistory: true,
                  press: () {},
                ),
              ]),
            )));
  }
}
