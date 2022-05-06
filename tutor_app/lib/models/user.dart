import 'package:tutor_app/models/course.dart';
import 'package:tutor_app/models/review.dart';
import 'package:tutor_app/models/tutor.dart';

class User {
  String id;
  String email;
  bool requestPassword;
  String google;
  String facebook;
  String apple;
  String phone;
  bool isActivated;
  bool isPhoneActivated;
  String phoneAuth;
  bool isPhoneAuthActivated;
  String avatar;
  String name;
  String birthday;
  String country;
  int timezone;
  String language;
  String level;
  double avgRating;
  Tutor tutorInfo;
  List<String> roles;
  List<Review> feedbacks;
  List<Course> courses;
  Null requireNote;
  String createdAt;
  String updatedAt;
  String deletedAt;

  User({
    this.id,
    this.level,
    this.email,
    this.google,
    this.facebook,
    this.apple,
    this.avatar,
    this.name,
    this.country,
    this.phone,
    this.language,
    this.birthday,
    this.avgRating,
    this.requestPassword,
    this.isActivated,
    this.isPhoneActivated,
    this.requireNote,
    this.timezone,
    this.phoneAuth,
    this.isPhoneAuthActivated,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.tutorInfo,
    this.roles,
    this.feedbacks,
    this.courses,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    level = json['level'];
    email = json['email'];
    google = json['google'];
    facebook = json['facebook'];
    apple = json['apple'];
    avatar = json['avatar'];
    name = json['name'];
    country = json['country'];
    phone = json['phone'];
    language = json['language'];
    birthday = json['birthday'];
    avgRating = json['avgRating'] != null ? json['avgRating'] : null;
    requestPassword = json['requestPassword'];
    isActivated = json['isActivated'];
    isPhoneActivated = json['isPhoneActivated'];
    requireNote = json['requireNote'];
    timezone = json['timezone'];
    phoneAuth = json['phoneAuth'];
    isPhoneAuthActivated = json['isPhoneAuthActivated'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    deletedAt = json['deletedAt'];
    tutorInfo =
        json['tutorInfo'] != null ? Tutor.fromJson(json['tutorInfo']) : null;
    if (json['roles'] != null) {
      roles = <String>[];
      json['roles'].forEach((v) {
        roles.add(v);
      });
    }
    if (json['feedbacks'] != null) {
      feedbacks = <Review>[];
      for (var val in json['feedbacks']) {
        feedbacks.add(Review.fromJson(val));
      }
    }
    if (json['courses'] != null) {
      courses = <Course>[];
      for (var val in json['courses']) {
        courses.add(Course.fromJson(val));
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['level'] = level;
    data['email'] = email;
    data['google'] = google;
    data['facebook'] = facebook;
    data['apple'] = apple;
    data['avatar'] = avatar;
    data['name'] = name;
    data['country'] = country;
    data['phone'] = phone;
    data['language'] = language;
    data['birthday'] = birthday;
    data['avgRating'] = avgRating;
    data['requestPassword'] = requestPassword;
    data['isActivated'] = isActivated;
    data['isPhoneActivated'] = isPhoneActivated;
    data['requireNote'] = requireNote;
    data['timezone'] = timezone;
    data['phoneAuth'] = phoneAuth;
    data['isPhoneAuthActivated'] = isPhoneAuthActivated;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['deletedAt'] = deletedAt;
    data['tutorInfo'] = tutorInfo;
    if (roles != null) {
      data['roles'] = roles.toList();
    }
    if (feedbacks != null) {
      data['feedbacks'] = feedbacks.map((v) => v.toJson()).toList();
    }
    if (courses != null) {
      data['courses'] = courses.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
