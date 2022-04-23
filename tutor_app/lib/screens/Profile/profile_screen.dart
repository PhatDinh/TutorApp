import 'package:flutter/material.dart';
import 'package:tutor_app/models/user.dart';
import 'package:tutor_app/models/user_dummy.dart';
import 'package:tutor_app/screens/Profile/profile_manager.dart';
import 'package:tutor_app/screens/Profile/widgets/date_button.dart';
import 'package:tutor_app/screens/Profile/widgets/edit_drop_button.dart';
import 'package:tutor_app/screens/Profile/widgets/edit_field_container.dart';
import 'package:tutor_app/screens/Settings/settings_screen.dart';
import 'package:tutor_app/screens/Settings/widgets/profile_header.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    ProfileManager.fetchProfile().then((value) {
      print(0);
      print(value);
      setState(() {
        user = value;
      });
    });
  }

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
                  boxName: user.phone,
                ),
                DateEditButton(
                  boxName: "Birthday",
                ),
                EditDropButton(
                  boxName: "Country",
                  items: ['Easy', 'Med', 'Hard'],
                  hintText: UserDummy.country,
                  startValue: null,
                ),
                EditDropButton(
                  boxName: "My Level",
                  items: ['Easy', 'Med', 'Hard'],
                  hintText: UserDummy.level,
                  startValue: null,
                ),
                EditDropButton(
                  boxName: "Want to learn",
                  items: ['Easy', 'Med', 'Hard'],
                  hintText: UserDummy.hobby,
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
