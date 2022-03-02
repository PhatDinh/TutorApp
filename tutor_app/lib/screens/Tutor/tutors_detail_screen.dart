import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutor name"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VideoContainer(),
            TutorDetailContainer(),
            RoundedButton(
              sizeButton: 0.9,
              color: Colors.blue,
              textColor: Colors.white,
              sizeFont: 20,
              press: () {},
              text: "Booking",
            ),
            //
            IntroduceTextBox(),
            //Languages
            SectionBox(
                sectionName: "Languages",
                child: Row(
                  children: [
                    RoundedTabText(
                      nameTab: 'English',
                    ),
                    RoundedTabText(
                      nameTab: 'Vietnamese',
                    ),
                    RoundedTabText(
                      nameTab: 'French',
                    ),
                  ],
                )),
            //Education
            Align(
              alignment: Alignment(-1, 0),
              child: SectionBox(
                sectionName: "Education",
                child: Text('Hello World'),
              ),
            ),

            //Rating
            CarouselTextBox(),
          ],
        ),
      ),
    );
  }
}
