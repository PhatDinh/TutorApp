import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/libary.dart';
import 'package:tutor_app/screens/Courses/course_detail_screen.dart';
import 'package:tutor_app/screens/Home/home_screen.dart';
import 'package:tutor_app/screens/Login/login_screen.dart';
import 'package:tutor_app/screens/Tutor/tutors_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final prefs = SharedPreferences.getInstance();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Style.lightMode,
      darkTheme: Style.darkMode,
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      home: LoginScreen(),
      routes: {
        '/tutor-detail': (context) => TutorsDetailScreen(),
        '/course-detail': (context) => CourseDetailScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
