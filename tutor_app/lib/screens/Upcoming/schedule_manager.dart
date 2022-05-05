import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/schedule.dart';
import 'package:tutor_app/models/schedule_details.dart';

class ScheduleManager {
  static Future<List<Schedule>> fetchUpcoming() async {
    List<Schedule> temp = [];
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse(
          'https://sandbox.api.lettutor.com/booking/list/student?page=1&perPage=20&dateTimeLte=1639805436469&orderBy=meeting&sortBy=desc'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    final resJson = jsonDecode(res.body)['data']['rows'];
    for (var t in resJson) {
      final schedule = Schedule.fromJson(t);
      if (schedule.userId == prefs.getString('id'))
        temp.add(Schedule.fromJson(t));
    }
    return temp;
  }

  static Future<List<Schedule>> fetchScheduleTutor(String tutorID) async {
    final prefs = await SharedPreferences.getInstance();
    List<Schedule> temp = [];
    final res = await http
        .post(Uri.parse('https://sandbox.api.lettutor.com/schedule'), headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer ' + prefs.getString('token'),
    }, body: {
      'tutorId': tutorID
    });
    final resJson = jsonDecode(res.body)['data'];
    for (var t in resJson) {
      final schedule = Schedule.fromJson(t);
      temp.add(schedule);
    }
    return temp;
  }
}
