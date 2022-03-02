import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Home/widgets/home_banner.dart';
import 'package:tutor_app/screens/Tutor/tutors_detail_screen.dart';
import 'package:tutor_app/screens/Tutor/tutors_screen.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HomeBanner(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommend',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            GestureDetector(
              onTap: () {
                return TutorsScreen();
              },
              child: Text('See All',
                  style: TextStyle(decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
      GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => TutorsDetailScreen()));
          },
          child: TutorContainer()),
    ]);
  }
}
