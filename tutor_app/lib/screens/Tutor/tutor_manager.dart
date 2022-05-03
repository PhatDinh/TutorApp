import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/models/review.dart';
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

  static Future<List<Tutor>> fetchfavoriteTutor() async {
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/tutor/more?perPage=9&page=1'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    List<Tutor> temp = [];
    final resJson = jsonDecode(res.body)['favoriteTutor'];
    for (var t in resJson) {
      Tutor tutor = Tutor.fromJson(t);
      temp.add(tutor);
    }
    return temp;
  }

  static Future<List<Review>> fetchFeedbacks(String tutorID) async {
    List<Review> temp = [];
    TutorManager.fetchTutor().then((value) {
      for (var t in value) {
        if (t.id == tutorID) {
          temp = t.feedbacks;
          break;
        }
      }
    });
    print(temp);
    return temp;
  }

  static Tutor findTutor(String tutorID) {
    List<Tutor> temp = [];
    TutorManager.fetchTutor().then((value) => temp = value);
    for (var t in temp) {
      if (t.id == tutorID) return t;
    }
  }

  static Tutor findTutorByList(List<Tutor> tutorList, String tutorID) {
    for (var t in tutorList) {
      if (t.id == tutorID) return t;
    }
    return null;
  }

  static void favoriteTutor(String tutorID) async {
    final prefs = await SharedPreferences.getInstance();
    final res = await http.post(
        Uri.parse('https://sandbox.api.lettutor.com/user/manageFavoriteTutor'),
        body: {
          'tutorId': tutorID
        },
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer ' + prefs.getString('token'),
        });
    print(res.statusCode);
  }

  static Future<bool> checKFavorite(String tutorID) async {
    final prefs = await SharedPreferences.getInstance();
    bool temp = false;
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/tutor/more?perPage=9&page=1'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    final resJson = jsonDecode(res.body)['favoriteTutor'];
    for (var t in resJson) {
      Tutor tutor = Tutor.fromJson(t);
      if (tutor.id == tutorID) {
        temp = true;
        break;
      }
    }
    return temp;
  }

  static Future<List<Tutor>> fetchByTopic(String topic) async {
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
      Tutor tutor = Tutor.fromJson(t);
      if (tutor.specialties.contains(topic)) {
        temp.add(tutor);
      }
    }
    return temp;
  }

  static Future<List<String>> fetchCategory() async {
    final prefs = await SharedPreferences.getInstance();
    final res = await http.get(
      Uri.parse('https://sandbox.api.lettutor.com/tutor/more?perPage=9&page=1'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + prefs.getString('token'),
      },
    );
    List<String> temp = [];
    final resJson = jsonDecode(res.body)['tutors']['rows'];
    for (var t in resJson) {
      Tutor tutor = Tutor.fromJson(t);
      for (var i in tutor.specialties.split(',')) {
        if (!temp.contains(i)) {
          temp.add(i);
        }
      }
    }
    return temp;
  }
}
