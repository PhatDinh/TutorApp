import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';

class MessageRoom extends StatelessWidget {
  const MessageRoom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: RoundedSearchField(
        hintIcon: Icons.search,
        hintText: "Search Tutors",
        onChanged: (value) {},
      ),
    );
  }
}
