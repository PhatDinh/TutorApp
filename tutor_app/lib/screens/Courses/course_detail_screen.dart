import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Courses/widgets/overview_container.dart';
import 'package:tutor_app/screens/Tutor/widgets/section_box.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Course name"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/demoPic.png',
                  height: size.height * 0.3,
                  width: size.width,
                ),

                //Overview
                OverviewContainer(
                  reason:
                      'Looking for some variety in your lesson topics? Immerse yourself in English discussion with this set of engaging topics.',
                  result:
                      'This course covers vocabulary at the CEFR B1-B2 levels. You will work on improving fluency and comprehension by discussing a variety of topics. In addition, you will receive corrections from a native English speaker to help improve your grammatical accuracy.',
                ),
                SectionBox(
                  sectionName: 'Experience Level',
                  child: Text('Intermediate'),
                ),
                SectionBox(
                  sectionName: 'Course Length',
                  child: Text('10 topics'),
                ),
                SectionBox(
                  sectionName: 'List topic',
                  child: Text('10 topics'),
                ),
              ],
            ),
          ),
        ));
  }
}
