import 'dart:math';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:tutor_app/models/course.dart';

class Tutor {
  double avg;
  String level;
  String email;
  String google;
  String facebook;
  String apple;
  String avatar;
  String name;
  String country;
  String phone;
  String language;
  String birthday;
  bool requestPassword;
  bool isActivated;
  bool isPhoneActivated;
  Null requireNote;
  int timezone;
  bool phoneAuth;
  bool isPhoneAuthActivated;
  String createdAt;
  String updatedAt;
  String deletedAt;
  List<Feedbacks> feedbacks;
  String id;
  String userId;
  String video;
  String bio;
  String education;
  String experience;
  String profession;
  String accent;
  String targetStudent;
  String interests;
  String languages;
  String specialties;
  String resume;
  bool isNative;
  int price;
  bool isOnline;

  Tutor(
      {this.level,
      this.email,
      this.avg,
      this.google,
      this.facebook,
      this.apple,
      this.avatar,
      this.name,
      this.country,
      this.phone,
      this.language,
      this.birthday,
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
      this.feedbacks,
      this.id,
      this.userId,
      this.video,
      this.bio,
      this.education,
      this.experience,
      this.profession,
      this.accent,
      this.targetStudent,
      this.interests,
      this.languages,
      this.specialties,
      this.resume,
      this.isNative,
      this.price,
      this.isOnline});

  Tutor.fromJson(Map<String, dynamic> json) {
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
    if (json['feedbacks'] != null) {
      feedbacks = <Feedbacks>[];
      json['feedbacks'].forEach((v) {
        feedbacks.add(new Feedbacks.fromJson(v));
      });
    }
    id = json['id'];
    userId = json['userId'];
    video = json['video'];
    bio = json['bio'];
    education = json['education'];
    experience = json['experience'];
    profession = json['profession'];
    accent = json['accent'];
    targetStudent = json['targetStudent'];
    interests = json['interests'];
    languages = json['languages'];
    specialties = json['specialties'];
    resume = json['resume'];
    isNative = json['isNative'];
    price = json['price'];
    isOnline = json['isOnline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['level'] = this.level;
    data['email'] = this.email;
    data['google'] = this.google;
    data['facebook'] = this.facebook;
    data['apple'] = this.apple;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['country'] = this.country;
    data['phone'] = this.phone;
    data['language'] = this.language;
    data['birthday'] = this.birthday;
    data['requestPassword'] = this.requestPassword;
    data['isActivated'] = this.isActivated;
    data['isPhoneActivated'] = this.isPhoneActivated;
    data['requireNote'] = this.requireNote;
    data['timezone'] = this.timezone;
    data['phoneAuth'] = this.phoneAuth;
    data['isPhoneAuthActivated'] = this.isPhoneAuthActivated;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['deletedAt'] = this.deletedAt;
    if (this.feedbacks != null) {
      data['feedbacks'] = this.feedbacks.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['video'] = this.video;
    data['bio'] = this.bio;
    data['education'] = this.education;
    data['experience'] = this.experience;
    data['profession'] = this.profession;
    data['accent'] = this.accent;
    data['targetStudent'] = this.targetStudent;
    data['interests'] = this.interests;
    data['languages'] = this.languages;
    data['specialties'] = this.specialties;
    data['resume'] = this.resume;
    data['isNative'] = this.isNative;
    data['price'] = this.price;
    data['isOnline'] = this.isOnline;
    return data;
  }
}

class Feedbacks {
  String id;
  String bookingId;
  String firstId;
  String secondId;
  int rating;
  String content;
  String createdAt;
  String updatedAt;
  Tutor firstInfo;

  Feedbacks(
      {this.id,
      this.bookingId,
      this.firstId,
      this.secondId,
      this.rating,
      this.content,
      this.createdAt,
      this.updatedAt,
      this.firstInfo});

  Feedbacks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['bookingId'];
    firstId = json['firstId'];
    secondId = json['secondId'];
    rating = json['rating'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    firstInfo = json['firstInfo'] != null
        ? new Tutor.fromJson(json['firstInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bookingId'] = this.bookingId;
    data['firstId'] = this.firstId;
    data['secondId'] = this.secondId;
    data['rating'] = this.rating;
    data['content'] = this.content;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.firstInfo != null) {
      data['firstInfo'] = this.firstInfo.toJson();
    }
    return data;
  }
}

class TutorDummy {
  static List<Tutor> offData = generateData(20);

  static Tutor generate() {
    var rd = Random();
    //final id = (1 + rd.nextInt(10000));
    return Tutor(
      name: loremIpsum(paragraphs: 1, words: 3),
      country: loremIpsum(paragraphs: 1, words: 3),
      languages: loremIpsum(paragraphs: 1, words: 1 + rd.nextInt(4)),
      education: loremIpsum(paragraphs: 1, words: 5),
      interests: loremIpsum(paragraphs: 1, words: 5),
      profession: loremIpsum(paragraphs: 1, words: 5),
      experience: (1 + rd.nextInt(10)).toString() + ' years',
      specialties: loremIpsum(paragraphs: 1, words: 1 + rd.nextInt(4)),
      bio: loremIpsum(paragraphs: 1, words: 200),
      avg: (1 + rd.nextInt(10)) / 2,
    );
  }

  static List<Tutor> generateData(int num) {
    List<Tutor> temp = [];
    for (int i = 0; i < num; i++) {
      temp.add(generate());
    }
    return temp;
  }
}
