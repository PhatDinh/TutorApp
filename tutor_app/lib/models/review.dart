import 'user.dart';

class Review {
  String id;
  String bookingId;
  String firstId;
  String secondId;
  int rating;
  String content;
  DateTime createdAt;
  DateTime updatedAt;
  User firstInfo;
  User secondInfo;

  Review({
    this.id,
    this.bookingId,
    this.firstId,
    this.secondId,
    this.rating,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.firstInfo,
    this.secondInfo,
  });

  Review.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['bookingId'];
    firstId = json['firstId'];
    secondId = json['secondId'];
    rating = json['rating'];
    content = json['content'];
    createdAt = DateTime.tryParse(json['createdAt'] ?? '');
    updatedAt = DateTime.tryParse(json['updatedAt'] ?? '');
    //firstInfo = User.fromJson(json['firstInfo']);
    //secondInfo = User.fromJson(json['secondInfo']);
    // firstInfo =
    //     json['firstInfo'] != null ? new User.fromJson(json['firstInfo']) : null;
    firstInfo =
        json['firstInfo'] != null ? new User.fromJson(json['firstInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bookingId'] = bookingId;
    data['firstId'] = firstId;
    data['secondId'] = secondId;
    data['rating'] = rating;
    data['content'] = content;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (firstInfo != null) {
      //data['firstInfo'] = firstInfo.toJson();
    }
    if (secondInfo != null) {
      //data['secondInfo'] = secondInfo.toJson();
    }
    return data;
  }
}
