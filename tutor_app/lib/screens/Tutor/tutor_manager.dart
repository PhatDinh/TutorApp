import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/tutor.dart';
import 'package:http/http.dart' as http;

class TutorManager {
  static Future<List<Tutor>> fetchTutor() async {
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/tutor/more?perPage=9&page=1'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    List<Tutor> temp = [];
    final resJson = jsonDecode(res.body)['tutors']['rows'];
    for (var t in resJson) {
      temp.add(Tutor.fromJson(t));
    }
    return temp;
  }
}
