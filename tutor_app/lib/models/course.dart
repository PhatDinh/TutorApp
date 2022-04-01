import 'dart:math';

import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'topic.dart';
import 'category.dart';

class Course {
  String id;
  String name;
  String description;
  String imageUrl;
  String level;
  String reason;
  String purpose;
  String otherDetails;
  int defaultPrice;
  int coursePrice;
  Null courseType;
  Null sectionType;
  bool visible;
  String createdAt;
  String updatedAt;
  List<Topics> topics;
  List<Categories> categories;

  Course(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.level,
      this.reason,
      this.purpose,
      this.otherDetails,
      this.defaultPrice,
      this.coursePrice,
      this.courseType,
      this.sectionType,
      this.visible,
      this.createdAt,
      this.updatedAt,
      this.topics,
      this.categories});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    level = json['level'];
    reason = json['reason'];
    purpose = json['purpose'];
    otherDetails = json['other_details'];
    defaultPrice = json['default_price'];
    coursePrice = json['course_price'];
    courseType = json['courseType'];
    sectionType = json['sectionType'];
    visible = json['visible'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    if (json['topics'] != null) {
      topics = <Topics>[];
      json['topics'].forEach((v) {
        topics.add(new Topics.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['imageUrl'] = this.imageUrl;
    data['level'] = this.level;
    data['reason'] = this.reason;
    data['purpose'] = this.purpose;
    data['other_details'] = this.otherDetails;
    data['default_price'] = this.defaultPrice;
    data['course_price'] = this.coursePrice;
    data['courseType'] = this.courseType;
    data['sectionType'] = this.sectionType;
    data['visible'] = this.visible;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.topics != null) {
      data['topics'] = this.topics.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CourseDummy {
  static List<Course> offData = generateData(10);

  static Course generate() {
    final rd = new Random();
    return Course(
        name: loremIpsum(paragraphs: 1, words: 5),
        description: loremIpsum(paragraphs: 1, words: 200),
        imageUrl: 'assets/images/demoCourse.jpg',
        reason: loremIpsum(paragraphs: 1, words: 50),
        purpose: loremIpsum(paragraphs: 1, words: 50),
        level: loremIpsum(paragraphs: 1, words: 1),
        topics: generateDummy(2 + rd.nextInt(8)));
  }

  static List<Course> generateData(int num) {
    List<Course> temp = [];
    for (int i = 0; i < num; i++) {
      temp.add(generate());
    }
    return temp;
  }

  static List<Topics> generateDummy(int num) {
    List<Topics> temp = [];
    for (int i = 0; i < num; i++) {
      temp.add(TopicsDummy.generate());
    }
    return temp;
  }
}
