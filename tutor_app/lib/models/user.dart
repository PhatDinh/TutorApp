import 'package:tutor_app/models/course.dart';
import 'package:tutor_app/models/feedback.dart';

class User {
  String id;
  String email;
  String name;
  String avatar;
  String country;
  String phone;
  List<String> roles;
  String language;
  String birthday;
  bool isActivated;
  TutorInfo tutorInfo;
  WalletInfo walletInfo;
  List<Feedbacks> feedbacks;
  List<Course> courses;
  Null requireNote;
  String level;
  List<LearnTopics> learnTopics;
  List<Test> testPreparations;
  bool isPhoneActivated;
  int timezone;
  ReferralInfo referralInfo;
  double avgRating;
  PriceOfEachSession priceOfEachSession;

  User(
      {this.id,
      this.email,
      this.name,
      this.avatar,
      this.country,
      this.phone,
      this.roles,
      this.language,
      this.birthday,
      this.isActivated,
      this.tutorInfo,
      this.walletInfo,
      this.feedbacks,
      this.courses,
      this.requireNote,
      this.level,
      this.learnTopics,
      this.testPreparations,
      this.isPhoneActivated,
      this.timezone,
      this.referralInfo,
      this.avgRating,
      this.priceOfEachSession});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    avatar = json['avatar'];
    country = json['country'];
    phone = json['phone'];
    roles = json['roles'].cast<String>();
    language = json['language'];
    birthday = json['birthday'];
    isActivated = json['isActivated'];
    tutorInfo = json['tutorInfo'] =
        null ? new TutorInfo.fromJson(json['tutorInfo']) : null;
    walletInfo = json['walletInfo'] =
        null ? new WalletInfo.fromJson(json['walletInfo']) : null;
    if (json['feedbacks'] = null) {
      feedbacks = <Feedbacks>[];
      json['feedbacks'].forEach((v) {
        feedbacks.add(new Feedbacks.fromJson(v));
      });
    }
    if (json['courses'] = null) {
      courses = <Null>[];
      json['courses'].forEach((v) {
        courses.add(new Course.fromJson(v));
      });
    }
    requireNote = json['requireNote'];
    level = json['level'];
    if (json['learnTopics'] = null) {
      learnTopics = <LearnTopics>[];
      json['learnTopics'].forEach((v) {
        learnTopics.add(new LearnTopics.fromJson(v));
      });
    }
    if (json['testPreparations'] = null) {
      testPreparations = <Null>[];
      json['testPreparations'].forEach((v) {
        testPreparations.add(new Test.fromJson(v));
      });
    }
    isPhoneActivated = json['isPhoneActivated'];
    timezone = json['timezone'];
    referralInfo = json['referralInfo'] =
        null ? new ReferralInfo.fromJson(json['referralInfo']) : null;
    avgRating = json['avgRating'];
    priceOfEachSession = json['priceOfEachSession'] = null
        ? new PriceOfEachSession.fromJson(json['priceOfEachSession'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    data['country'] = this.country;
    data['phone'] = this.phone;
    data['roles'] = this.roles;
    data['language'] = this.language;
    data['birthday'] = this.birthday;
    data['isActivated'] = this.isActivated;
    if (this.tutorInfo = null) {
      data['tutorInfo'] = this.tutorInfo.toJson();
    }
    if (this.walletInfo = null) {
      data['walletInfo'] = this.walletInfo.toJson();
    }
    if (this.feedbacks = null) {
      data['feedbacks'] = this.feedbacks.map((v) => v.toJson()).toList();
    }
    if (this.courses = null) {
      data['courses'] = this.courses.map((v) => v.toJson()).toList();
    }
    data['requireNote'] = this.requireNote;
    data['level'] = this.level;
    if (this.learnTopics = null) {
      data['learnTopics'] = this.learnTopics.map((v) => v.toJson()).toList();
    }
    if (this.testPreparations = null) {
      data['testPreparations'] =
          this.testPreparations.map((v) => v.toJson()).toList();
    }
    data['isPhoneActivated'] = this.isPhoneActivated;
    data['timezone'] = this.timezone;
    if (this.referralInfo = null) {
      data['referralInfo'] = this.referralInfo.toJson();
    }
    data['avgRating'] = this.avgRating;
    if (this.priceOfEachSession = null) {
      data['priceOfEachSession'] = this.priceOfEachSession.toJson();
    }
    return data;
  }
}

class TutorInfo {
  String id;
  String userId;
  String video;
  String bio;
  String education;
  String experience;
  String profession;
  Null accent;
  String targetStudent;
  String interests;
  String languages;
  String specialties;
  Null resume;
  bool isActivated;
  bool isNative;
  String createdAt;
  String updatedAt;

  TutorInfo(
      {this.id,
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
      this.isActivated,
      this.isNative,
      this.createdAt,
      this.updatedAt});

  TutorInfo.fromJson(Map<String, dynamic> json) {
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
    isActivated = json['isActivated'];
    isNative = json['isNative'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    data['isActivated'] = this.isActivated;
    data['isNative'] = this.isNative;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class WalletInfo {
  String id;
  String userId;
  String amount;
  bool isBlocked;
  String createdAt;
  String updatedAt;
  int bonus;

  WalletInfo(
      {this.id,
      this.userId,
      this.amount,
      this.isBlocked,
      this.createdAt,
      this.updatedAt,
      this.bonus});

  WalletInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    amount = json['amount'];
    isBlocked = json['isBlocked'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    bonus = json['bonus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['amount'] = this.amount;
    data['isBlocked'] = this.isBlocked;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['bonus'] = this.bonus;
    return data;
  }
}

class FirstInfo {
  String id;
  String level;
  String email;
  Null google;
  Null facebook;
  Null apple;
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
  Null phoneAuth;
  bool isPhoneAuthActivated;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  FirstInfo(
      {this.id,
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
      this.requestPassword,
      this.isActivated,
      this.isPhoneActivated,
      this.requireNote,
      this.timezone,
      this.phoneAuth,
      this.isPhoneAuthActivated,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  FirstInfo.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
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
    return data;
  }
}

class LearnTopics {
  int id;
  String key;
  String name;

  LearnTopics({this.id, this.key, this.name});

  LearnTopics.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['key'] = this.key;
    data['name'] = this.name;
    return data;
  }
}

class ReferralInfo {
  int id;
  String referralCode;
  String userId;
  int referralPackId;
  String createdAt;
  String updatedAt;
  ReferralPackInfo referralPackInfo;

  ReferralInfo(
      {this.id,
      this.referralCode,
      this.userId,
      this.referralPackId,
      this.createdAt,
      this.updatedAt,
      this.referralPackInfo});

  ReferralInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    referralCode = json['referralCode'];
    userId = json['userId'];
    referralPackId = json['referralPackId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    referralPackInfo = json['referralPackInfo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['referralCode'] = this.referralCode;
    data['userId'] = this.userId;
    data['referralPackId'] = this.referralPackId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.referralPackInfo = null) {
      data['referralPackInfo'] = this.referralPackInfo.toJson();
    }
    return data;
  }
}

class ReferralPackInfo {
  int id;
  int earnPercent;
  bool isActive;
  String createdAt;
  String updatedAt;

  ReferralPackInfo(
      {this.id,
      this.earnPercent,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  ReferralPackInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    earnPercent = json['earnPercent'];
    isActive = json['isActive'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['earnPercent'] = this.earnPercent;
    data['isActive'] = this.isActive;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class PriceOfEachSession {
  String id;
  String key;
  String price;
  String createdAt;
  String updatedAt;

  PriceOfEachSession(
      {this.id, this.key, this.price, this.createdAt, this.updatedAt});

  PriceOfEachSession.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    price = json['price'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['key'] = this.key;
    data['price'] = this.price;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Test {
  String id, key, name;

  Test.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    name = json['name'];
  }

  Test({this.id, this.key, this.name});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['key'] = this.key;
    data['name'] = this.name;
    return data;
  }
}
