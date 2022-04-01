import 'package:flutter/material.dart';
import 'package:tutor_app/models/user_dummy.dart';

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
              UserDummy.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              UserDummy.email,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
