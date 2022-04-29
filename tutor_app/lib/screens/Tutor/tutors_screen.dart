import 'package:flutter/material.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:tutor_app/screens/Tutor/tutor_manager.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';
import 'package:tutor_app/widgets/rounded_tab_text.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class TutorsScreen extends StatefulWidget {
  const TutorsScreen({Key key}) : super(key: key);

  @override
  State<TutorsScreen> createState() => _TutorsScreenState();
}

class _TutorsScreenState extends State<TutorsScreen> {
  List<Tutor> tutorList = [];
  @override
  void initState() {
    super.initState();
    TutorManager.fetchTutor().then((value) {
      setState(() {
        tutorList = value;
      });
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

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
                        nameTab: 'Favorite',
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
              ...List.generate(tutorList.length, (index) {
                return TutorContainer(tutor: tutorList[index]);
              })
            ],
          )),
    );
  }
}
