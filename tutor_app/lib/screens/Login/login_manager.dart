import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginManager {
  static Future<http.Response> login(String email, String pass) async {
    final res = await http.post(
      Uri.parse('https://sandbox.api.lettutor.com/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{"email": email, "password": pass}),
    );
    print(res.body);
    if (res.statusCode == 200) {
      String token = jsonDecode(res.body)['tokens']['access']['token'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
    }
    return res;
  }

  static Future<http.Response> register(String email, String pass) async {
    final res = await http.post(
        Uri.parse('https://sandbox.api.lettutor.com/auth/register'),
        headers: <String, String>{
          'Content-type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          "email": email,
          'password': pass,
          'source': null,
        }));
    print(res.body);
    return res;
  }

  static Future<http.Response> forgot(String email) async {
    final res = await http.post(
        Uri.parse('https://sandbox.api.lettutor.com/auth/register'),
        headers: <String, String>{
          'Content-type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          "email": email,
        }));
    print(res.body);
    return res;
  }
}
