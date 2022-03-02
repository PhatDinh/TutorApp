import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Login/login_screen.dart';
import 'package:tutor_app/screens/Settings/widgets/rounded_setting_button.dart';
import 'package:tutor_app/widgets/rounded_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(),
          Divider(
            color: Colors.grey,
          ),
          RoundedSettingButton(
            color: Colors.white,
            textColor: Colors.black,
            icon: Icons.person,
            text: "View Feedbacks",
            press: () {},
          ),
          RoundedSettingButton(
            icon: Icons.person,
            text: "Booking History",
            press: () {},
          ),
          RoundedSettingButton(
            icon: Icons.person,
            text: "Seassion History",
            press: () {},
          ),
          RoundedSettingButton(
            icon: Icons.person,
            text: "Advanced Setting",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          RoundedSettingButton(
            icon: Icons.person,
            text: "Our website",
            press: () {},
          ),
          RoundedSettingButton(
            icon: Icons.person,
            text: "Facebook",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          RoundedButton(
            sizeButton: 0.9,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => LoginScreen()));
            },
            text: 'Log out',
          )
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.circle,
          size: 50,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tran Dinh Phat',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '18127177@student.hcmus.edu.vn',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
