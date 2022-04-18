import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_app/models/course.dart';
import 'package:tutor_app/screens/Courses/course_detail_screen.dart';
import 'rounded_tab_text.dart';

class CourseContainer extends StatelessWidget {
  final Course course;

  const CourseContainer({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/course-detail',
            arguments: {'course': course});
      },
      child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Column(
            children: [
              Image.network(
                course.imageUrl,
                height: size.height * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 15),
                child: Text(
                  course.name,
                  maxLines: 2,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  course.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )),
    );
  }
}
