import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/course.dart';

class CourseManager {
  static Future<List<Course>> fetchCourse() async {
    List<Course> temp = [];
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/course?page=1&size=100'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    final resJson = jsonDecode(res.body)['data']['rows'];
    for (var t in resJson) {
      temp.add(Course.fromJson(t));
    }
    return temp;
  }
}
