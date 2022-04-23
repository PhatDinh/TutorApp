import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/user_dummy.dart';

class ProfileHeader extends StatefulWidget {
  ProfileHeader({
    Key key,
  }) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  String avatar;

  String name = 'empty';

  String mail = 'empty';

  void getUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    String a = prefs.getString('name');

    setState(() {
      avatar = prefs.getString('avatar');
      name = prefs.getString('name');
      mail = prefs.getString('email');
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: ClipOval(child: Image.network(avatar)),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              mail,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
