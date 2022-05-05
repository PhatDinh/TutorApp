import 'package:flutter/material.dart';
import 'package:tutor_app/models/schedule.dart';
import 'package:tutor_app/models/schedule_details.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Tutor/widgets/carousel_text_box.dart';
import 'package:tutor_app/screens/Tutor/widgets/introduce_text_box.dart';
import 'package:tutor_app/screens/Tutor/widgets/section_box.dart';
import 'package:tutor_app/screens/Tutor/widgets/tutor_detail_container.dart';
import 'package:tutor_app/screens/Tutor/widgets/video_container.dart';
import 'package:tutor_app/screens/Upcoming/schedule_manager.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class TutorsDetailScreen extends StatefulWidget {
  final Tutor tutor;
  const TutorsDetailScreen({Key key, this.tutor}) : super(key: key);

  @override
  State<TutorsDetailScreen> createState() => _TutorsDetailScreenState();
}

class _TutorsDetailScreenState extends State<TutorsDetailScreen> {
  List<Schedule> scheduleList = [];

  @override
  void initState() {
    super.initState();
    ScheduleManager.fetchScheduleTutor(widget.tutor.userId).then((value) {
      setState(() {
        scheduleList = value;
        print(scheduleList.length);
      });
    });
  }

  List<Widget> listSpec(String spec) {
    List<String> temp = spec.split(',');
    return List.generate(temp.length, (index) {
      return RoundedTabText(nameTab: temp[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    //Tutor tutor = (ModalRoute.of(context).settings.arguments as Map)['tutor'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tutor.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoContainer(
              linkVideo: widget.tutor.video,
            ),
            TutorDetailContainer(
              tutor: widget.tutor,
            ),
            Center(
              child: RoundedButton(
                sizeButton: 0.9,
                sizeFont: 20,
                press: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("Pick your date"),
                          ),
                          body: Center(
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ...List.generate(scheduleList.length,
                                      (index) {
                                    final temp = scheduleList[index];
                                    if (temp.scheduleDetails[0].isBooked)
                                      return Container();
                                    else
                                      return RoundedButton(
                                        text:
                                            temp.scheduleDetails[0].startPeriod,
                                        press: () {},
                                      );
                                  })
                                ],
                              ),
                            ]),
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
                    children: listSpec(widget.tutor.languages),
                  ),
                )),
            //Education
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Education",
                child: Text(widget.tutor.education),
              ),
            ),
            //Experience
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Experience",
                child: Text(widget.tutor.experience),
              ),
            ),
            //Interest
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Interest",
                child: Text(widget.tutor.interests),
              ),
            ),
            //Profession
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Profession",
                child: Text(widget.tutor.profession),
              ),
            ),
            //Specialities
            SectionBox(
                sectionName: "Specialities",
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listSpec(widget.tutor.specialties),
                  ),
                )),

            //Rating
            SectionBox(
              sectionName: 'Review',
              child: Container(
                  width: double.infinity,
                  child: CarouselTextBox(
                    tutor: widget.tutor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
