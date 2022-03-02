import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Profile/widgets/date_button.dart';
import 'package:tutor_app/screens/Profile/widgets/edit_drop_button.dart';
import 'package:tutor_app/screens/Profile/widgets/edit_field_container.dart';
import 'package:tutor_app/screens/Settings/settings_screen.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(children: [
            ProfileHeader(),
            Column(
              children: [
                EditFieldContainer(
                  boxName: "Phone Number",
                ),
                DateEditButton(
                  boxName: "Birthday",
                ),
                EditDropButton(
                  boxName: "Country",
                  items: ['Easy', 'Med', 'Hard'],
                  hintText: 'Please select your country',
                  startValue: null,
                ),
                EditDropButton(
                  boxName: "My Level",
                  items: ['Easy', 'Med', 'Hard'],
                  hintText: 'Please select your level',
                  startValue: null,
                ),
                EditDropButton(
                  boxName: "Want to learn",
                  items: ['Easy', 'Med', 'Hard'],
                  hintText: 'Please select want to learn',
                  startValue: null,
                ),
                RoundedButton(
                  sizeButton: 0.8,
                  press: () {},
                  text: "Save",
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
