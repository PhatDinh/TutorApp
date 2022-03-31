import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Tutor/widgets/carousel_text_box.dart';
import 'package:tutor_app/screens/Tutor/widgets/introduce_text_box.dart';
import 'package:tutor_app/screens/Tutor/widgets/section_box.dart';
import 'package:tutor_app/screens/Tutor/widgets/tutor_detail_container.dart';
import 'package:tutor_app/screens/Tutor/widgets/video_container.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class TutorsDetailScreen extends StatelessWidget {
  const TutorsDetailScreen({Key key}) : super(key: key);

  List<Widget> listSpec(String spec) {
    List<String> temp = spec.split(' ');
    return List.generate(temp.length, (index) {
      return RoundedTabText(nameTab: temp[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    Tutor tutor = (ModalRoute.of(context).settings.arguments as Map)['tutor'];

    return Scaffold(
      appBar: AppBar(
        title: Text(tutor.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoContainer(),
            TutorDetailContainer(
              tutor: tutor,
            ),
            Center(
              child: RoundedButton(
                sizeButton: 0.9,
                color: Colors.blue,
                textColor: Colors.white,
                sizeFont: 20,
                press: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Pick your date"),
                          ),
                          body: SingleChildScrollView(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RoundedButton(
                                    text: "2022-03-05",
                                    press: () {},
                                  ),
                                  RoundedButton(
                                    text: "2022-03-05",
                                    press: () {},
                                  ),
                                  RoundedButton(
                                    text: "2022-03-05",
                                    press: () {},
                                  ),
                                  RoundedButton(
                                    text: "2022-03-05",
                                    press: () {},
                                  ),
                                  RoundedButton(
                                    text: "2022-03-05",
                                    press: () {},
                                  ),
                                  RoundedButton(
                                    text: "2022-03-05",
                                    press: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                text: "Booking",
              ),
            ),
            //
            IntroduceTextBox(),
            //Languages
            SectionBox(
                sectionName: "Specialities",
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listSpec(tutor.languages),
                  ),
                )),
            //Education
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Education",
                child: Text(tutor.education),
              ),
            ),
            //Experience
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Experience",
                child: Text(tutor.experience),
              ),
            ),
            //Interest
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Interest",
                child: Text(tutor.interests),
              ),
            ),
            //Profession
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Profession",
                child: Text(tutor.profession),
              ),
            ),
            //Specialities
            SectionBox(
                sectionName: "Specialities",
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listSpec(tutor.specialties),
                  ),
                )),

            //Rating
            SectionBox(
              sectionName: 'Review',
              child:
                  Container(width: double.infinity, child: CarouselTextBox()),
            ),
          ],
        ),
      ),
    );
  }
}
