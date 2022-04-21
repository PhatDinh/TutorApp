import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/schedule.dart';

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
      print(schedule);
      if (schedule.userId == prefs.getString('id'))
        temp.add(Schedule.fromJson(t));
    }
    return temp;
  }
}
