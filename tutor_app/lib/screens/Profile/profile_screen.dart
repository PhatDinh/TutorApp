import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Settings/settings_screen.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(children: [
          ProfileHeader(),
          Column(
            children: [
              Text('Phone Number'),
              RoundedInputField(
                hintIcon: null,
                hintText: "Phone Number",
              )
            ],
          )
        ]),
      ),
    );
  }
}
