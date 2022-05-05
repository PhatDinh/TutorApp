import 'package:flutter/material.dart';
import 'package:tutor_app/models/category.dart';
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
  List<String> categoryList = [];
  List<Course> allCourseList = [];

  void fetch({String topic = ''}) {
    if (topic.isEmpty) {
      CourseManager.fetchCourse().then((value) {
        setState(() {
          courseList = value;
          allCourseList = courseList;
        });
      });
    } else {
      //topic = topic.replaceAll(RegExp(''), '-');
      print(topic);
      CourseManager.fetchByTopic(topic).then((value) {
        setState(() {
          courseList = value;
        });
      });
    }
  }

  void _runFilter(String enteredKeyword) {
    List<Course> results = [];
    print(enteredKeyword);
    if (enteredKeyword.isEmpty) {
      setState(() {
        courseList = allCourseList;
      });
    } else {
      results = courseList
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      setState(() {
        courseList = results;
      });
      // we use the toLowerCase() method to make it case-insensitive
    }
    // Refresh the UI
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
    CourseManager.fetchCategories().then((value) {
      categoryList = value;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
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
                onChanged: (value) => _runFilter(value),
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
                        onTap: () => fetch(),
                      ),
                      ...List.generate(
                          categoryList.length,
                          (index) => RoundedTabText(
                                nameTab: categoryList[index],
                                onTap: () => fetch(topic: categoryList[index]),
                              )),
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
