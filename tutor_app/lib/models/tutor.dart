import 'user.dart';
import 'review.dart';

class Tutor {
  String id;
  String userId;
  String name;
  String avatar;
  String video;
  String bio;
  String country;
  String education;
  String experience;
  String profession;
  String accent;
  String targetStudent;
  String interests;
  String languages;
  String specialties;
  String resume;
  bool isActivated;
  bool isNative;
  DateTime createdAt;
  DateTime updatedAt;
  User user;
  bool isFavorite;
  double avgRating;
  List<Review> feedbacks;
  int price;

  Tutor({
    this.id,
    this.userId,
    this.name,
    this.avatar,
    this.video,
    this.bio,
    this.country,
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
    this.updatedAt,
    this.user,
    this.isFavorite,
    this.avgRating = 0,
    this.feedbacks,
    this.price,
  });

  Tutor.fromJson(Map<String, dynamic> json) {
    user = json['User'];
    id = json['id'];
    userId = json['userId'];
    name = json['name'];
    avatar = json['avatar'];
    video = json['video'];
    bio = json['bio'];
    country = json['country'];
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
    createdAt = DateTime.tryParse(json['createdAt']);
    updatedAt = DateTime.tryParse(json['updatedAt']);
    isFavorite = json['isFavorite'];
    if (json['feedbacks'] != null) {
      feedbacks = <Review>[];
      for (var f in json['feedbacks']) {
        feedbacks.add(Review.fromJson(f));
      }
    } else {
      feedbacks = user.feedbacks;
    }

    if (!feedbacks.isEmpty) {
      double rating = 0;
      int count = 0;
      for (var f in feedbacks) {
        count += 1;
        rating += f.rating;
      }
      avgRating = (rating) / count;
    } else
      avgRating = 0;

    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['name'] = name;
    data['avatar'] = avatar;
    data['video'] = video;
    data['bio'] = bio;
    data['education'] = education;
    data['experience'] = experience;
    data['profession'] = profession;
    data['accent'] = accent;
    data['targetStudent'] = targetStudent;
    data['interests'] = interests;
    data['languages'] = languages;
    data['specialties'] = specialties;
    data['resume'] = resume;
    data['isActivated'] = isActivated;
    data['isNative'] = isNative;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (user != null) {
      data['User'] = user.toJson();
    }
    data['isFavorite'] = isFavorite;
    data['avgRating'] = avgRating;
    if (feedbacks != null) {
      data['feedbacks'] = feedbacks.map((v) => v.toJson()).toList();
    }
    data['price'] = price;
    return data;
  }
}

class FavouriteTutor {
  String id;
  String firstId;
  String secondId;
  String createdAt;
  String updatedAt;
  User secondInfo;

  FavouriteTutor(
      {this.id,
      this.firstId,
      this.secondId,
      this.createdAt,
      this.updatedAt,
      this.secondInfo});

  FavouriteTutor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstId = json['firstId'];
    secondId = json['secondId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    secondInfo = json['secondInfo'] != null
        ? new User.fromJson(json['secondInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstId'] = this.firstId;
    data['secondId'] = this.secondId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.secondInfo != null) {
      data['secondInfo'] = this.secondInfo.toJson();
    }
    return data;
  }
}
