import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Profile/profile_screen.dart';

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleName;
  final bool isOnHome;
  const TitleBar({Key key, this.titleName, this.isOnHome = false})
      : super(key: key);

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      backgroundColor: Colors.white,
      title: Text('Home'),
      actions: [
        isOnHome
            ? IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ProfileScreen()));
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              )
            : null
      ],
    );
  }
}
