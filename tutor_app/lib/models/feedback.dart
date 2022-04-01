import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:tutor_app/models/tutor.dart';

class Feedbacks {
  String id;
  String bookingId;
  String firstId;
  String secondId;
  double rating;
  String content;
  String createdAt;
  String updatedAt;
  Tutor firstInfo;
  Tutor secondInfo;

  Feedbacks(
      {this.id,
      this.bookingId,
      this.firstId,
      this.secondId,
      this.rating,
      this.content,
      this.createdAt,
      this.updatedAt,
      this.firstInfo,
      this.secondInfo});

  Feedbacks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookingId = json['bookingId'];
    firstId = json['firstId'];
    secondId = json['secondId'];
    rating = json['rating'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    firstInfo =
        json['firstInfo'] = null ? new Tutor.fromJson(json['firstInfo']) : null;
    secondInfo = json['secondInfo'] =
        null ? new Tutor.fromJson(json['secondInfo']) : null;
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
    if (this.firstInfo = null) {
      data['firstInfo'] = this.firstInfo.toJson();
    }
    if (this.secondInfo = null) {
      data['secondInfo'] = this.secondInfo.toJson();
    }
    return data;
  }
}

class FeedbackDummy {
  static List<Feedbacks> offData = generateData(8);

  static Feedbacks generate() {
    final rd = new Random();
    return Feedbacks(
      rating: (1 + rd.nextInt(10)) / 2,
      content: loremIpsum(paragraphs: 1, words: 50),
      firstId: loremIpsum(paragraphs: 1, words: 3),
    );
  }

  static List<Feedbacks> generateData(int num) {
    List<Feedbacks> temp = [];
    for (int i = 0; i < num; i++) {
      temp.add(generate());
    }
    return temp;
  }
}
