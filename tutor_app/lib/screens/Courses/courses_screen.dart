import 'package:flutter/material.dart';
import 'package:tutor_app/models/course.dart';
import 'package:tutor_app/screens/Courses/course_manager.dart';
import 'package:tutor_app/widgets/course_container.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  List<Course> courseList = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    CourseManager.fetchCourse().then((value) {
      setState(() {
        courseList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RoundedSearchField(
                onChanged: (value) {},
                hintIcon: Icons.search,
                hintText: "Search Courses",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      RoundedTabText(
                        nameTab: 'All',
                      ),
                      RoundedTabText(
                        nameTab: 'English for kids',
                      ),
                      RoundedTabText(
                        nameTab: 'IELTS',
                      ),
                      RoundedTabText(
                        nameTab: 'TOEIC',
                      ),
                      RoundedTabText(
                        nameTab: 'TOFEL',
                      ),
                    ],
                  ),
                ),
              ),
              ...List.generate(courseList.length, (index) {
                return CourseContainer(
                  course: courseList[index],
                );
              })
            ],
          ),
        ));
  }
}
