import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';
import 'package:tutor_app/widgets/tutor_container.dart';

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            RoundedSearchField(
              onChanged: (value) {},
              hintIcon: Icons.search,
              hintText: "Search Tutors",
            ),
            TutorContainer(),
          ],
        ));
  }
}
