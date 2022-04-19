import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Home/widgets/home_banner.dart';
import 'package:tutor_app/screens/Tutor/tutor_manager.dart';
import 'package:tutor_app/screens/Tutor/tutors_detail_screen.dart';
import 'package:tutor_app/screens/Tutor/tutors_screen.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Tutor> tutorList = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    TutorManager.fetchTutor().then((value) {
      setState(() {
        tutorList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
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
        ...List.generate(tutorList.length, (index) {
          return TutorContainer(tutor: tutorList[index]);
        })
      ]),
    );
  }
}
