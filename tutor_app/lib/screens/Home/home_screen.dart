import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Messenger/message_screen.dart';
import 'package:tutor_app/screens/Profile/profile_screen.dart';
import 'package:tutor_app/screens/Settings/settings_screen.dart';
import 'package:tutor_app/screens/Tutor/tutors_screen.dart';
import 'package:tutor_app/screens/Upcoming/upcoming_screen.dart';
import './widgets/body.dart';
import 'package:tutor_app/widgets/rounded_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void onTapHandler(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  Widget getBody() {
    if (_selectedIndex == 0) {
      return Body();
    } else if (_selectedIndex == 1)
      return MessageRoom();
    else if (_selectedIndex == 3)
      return TutorsScreen();
    else if (_selectedIndex == 2)
      return UpcomingScreen();
    else
      return SettingScreen();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ProfileScreen()));
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock,
              color: Colors.grey,
            ),
            label: 'Upcoming',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: Colors.grey,
            ),
            label: 'Tutor',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wheelchair_pickup,
              color: Colors.grey,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (value) {
          this.onTapHandler(value);
        },
      ),
    );
  }
}
