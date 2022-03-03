import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_app/screens/Courses/course_detail_screen.dart';
import 'rounded_tab_text.dart';

class CourseContainer extends StatelessWidget {
  final String courseName;
  final String courseLevel;

  const CourseContainer({Key key, this.courseLevel, this.courseName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TextButton(
                  onPressed: () {},
                  child: const Icon(Icons.account_circle, size: 64),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(courseName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(courseLevel,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => CourseDetailScreen()));
                    },
                    child: const Icon(FontAwesomeIcons.arrowRight)),
              ]),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text('Lorem ipsum dolor sit amet, consecrate'),
              ),
            ])),
      ),
    );
  }
}
