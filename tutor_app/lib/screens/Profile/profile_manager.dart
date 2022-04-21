import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/user.dart';

class ProfileManager {
  static Future<User> fetchProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/course?page=1&size=100'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    final resJson = jsonDecode(res.body)['user'];
    final t = User.fromJson(resJson);
    prefs.setString('ID', t.id);
    return t;
  }
}
