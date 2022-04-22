import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/user.dart';

class LoginManager {
  static Future<bool> login(String email, String pass) async {
    final res = await http.post(
      Uri.parse('https://sandbox.api.lettutor.com/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{"email": email, "password": pass}),
    );

    if (res.statusCode == 200) {
      //get token
      String token = jsonDecode(res.body)['tokens']['access']['token'];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);

      //get id
      String id = jsonDecode(res.body)['user']['id'];
      await prefs.setString('id', id);
      //get avatar
      String avatar = jsonDecode(res.body)['user']['avatar'];
      await prefs.setString('avatar', avatar);
      //get name
      String name = jsonDecode(res.body)['user']['name'];
      await prefs.setString('name', name);
      //get email
      String email = jsonDecode(res.body)['user']['email'];
      await prefs.setString('email', email);

      return true;
    }
    return false;
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

  static Future<http.Response> fetchInfo() async {
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/user/info'),
      headers: <String, String>{
        'Content-type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token')
      },
    );
    print(res);

    return res;
  }
}
