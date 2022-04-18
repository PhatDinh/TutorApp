import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/tutor-detail': (context) => TutorsDetailScreen(),
        '/course-detail': (context) => CourseDetailScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
