import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              RoundedSearchField(
                onChanged: (value) {},
                hintIcon: Icons.search,
                hintText: "Search Tutors",
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
              ...List.generate(
                TutorDummy.offData.length,
                (index) {
                  return TutorContainer(tutor: TutorDummy.offData[index]);
                },
              )
            ],
          )),
    );
  }
}
