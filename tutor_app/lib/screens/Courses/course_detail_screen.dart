import 'package:flutter/material.dart';
import 'package:tutor_app/models/course.dart';
import 'package:tutor_app/screens/Courses/widgets/overview_container.dart';
import 'package:tutor_app/screens/Tutor/widgets/section_box.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Course course =
        (ModalRoute.of(context).settings.arguments as Map)['course'];

    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(course.name),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  course.imageUrl,
                  height: size.height * 0.3,
                  width: size.width,
                ),
                Center(
                  child: RoundedButton(
                    text: 'Discover',
                    press: () {},
                  ),
                ),
                //Overview
                OverviewContainer(
                  reason: course.reason,
                  result: course.purpose,
                ),
                SectionBox(
                  sectionName: 'Experience Level',
                  child: Text(course.level),
                ),
                SectionBox(
                  sectionName: 'Course Length',
                  child: Text(course.topics.length.toString() + ' topics'),
                ),
                SectionBox(
                    sectionName: 'List topic',
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(course.topics.length, (index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: InkWell(
                                onTap: () {
                                  print(course.topics[index].nameFile);
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                          title:
                                              Text(course.topics[index].name)),
                                      body: SfPdfViewer.network(
                                          course.topics[index].nameFile),
                                    );
                                  }));
                                },
                                child: Text(index.toString() +
                                    ' ' +
                                    course.topics[index].name),
                              ),
                            );
                          })
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
