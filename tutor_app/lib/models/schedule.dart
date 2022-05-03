import 'dart:math';

import 'package:tutor_app/models/tutor.dart';

import 'schedule_details.dart';

class Schedule {
  int createdAtTimeStamp;
  int updatedAtTimeStamp;
  String id;
  String userId;
  String scheduleDetailId;
  String tutorMeetingLink;
  String studentMeetingLink;
  String studentRequest;
  String tutorReview;
  int scoreByTutor;
  String createdAt;
  String updatedAt;
  String recordUrl;
  bool isDeleted;
  ScheduleDetailInfo scheduleDetailInfo;
  bool showRecordUrl;
  List<dynamic> studentMaterials;

  Schedule(
      {this.createdAtTimeStamp,
      this.updatedAtTimeStamp,
      this.id,
      this.userId,
      this.scheduleDetailId,
      this.tutorMeetingLink,
      this.studentMeetingLink,
      this.studentRequest,
      this.tutorReview,
      this.scoreByTutor,
      this.createdAt,
      this.updatedAt,
      this.recordUrl,
      this.isDeleted,
      this.scheduleDetailInfo,
      this.showRecordUrl,
      this.studentMaterials});

  Schedule.fromJson(Map<String, dynamic> json) {
    createdAtTimeStamp = json['createdAtTimeStamp'];
    updatedAtTimeStamp = json['updatedAtTimeStamp'];
    id = json['id'];
    userId = json['userId'];
    scheduleDetailId = json['scheduleDetailId'];
    tutorMeetingLink = json['tutorMeetingLink'];
    studentMeetingLink = json['studentMeetingLink'];
    studentRequest = json['studentRequest'];
    tutorReview = json['tutorReview'];
    scoreByTutor = json['scoreByTutor'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    recordUrl = json['recordUrl'];
    isDeleted = json['isDeleted'];
    scheduleDetailInfo =
        ScheduleDetailInfo.fromJson(json['scheduleDetailInfo']);
    showRecordUrl = json['showRecordUrl'];
    studentMaterials = json['studentMaterials'];
    // if (json['studentMaterials'] != null) {
    //   studentMaterials = <Null>[];
    //   json['studentMaterials'].forEach((v) {
    //     studentMaterials.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAtTimeStamp'] = this.createdAtTimeStamp;
    data['updatedAtTimeStamp'] = this.updatedAtTimeStamp;
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['scheduleDetailId'] = this.scheduleDetailId;
    data['tutorMeetingLink'] = this.tutorMeetingLink;
    data['studentMeetingLink'] = this.studentMeetingLink;
    data['studentRequest'] = this.studentRequest;
    data['tutorReview'] = this.tutorReview;
    data['scoreByTutor'] = this.scoreByTutor;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['recordUrl'] = this.recordUrl;
    data['isDeleted'] = this.isDeleted;
    if (this.scheduleDetailInfo != null) {
      data['scheduleDetailInfo'] = this.scheduleDetailInfo.toJson();
    }
    data['showRecordUrl'] = this.showRecordUrl;
    this.studentMaterials = [];
    // if (this.studentMaterials != null) {
    //   data['studentMaterials'] =
    //       this.studentMaterials.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class ScheduleDetailInfo {
  int startPeriodTimestamp;
  int endPeriodTimestamp;
  String id;
  String scheduleId;
  String startPeriod;
  String endPeriod;
  String createdAt;
  String updatedAt;
  ScheduleInfo scheduleInfo;

  ScheduleDetailInfo(
      {this.startPeriodTimestamp,
      this.endPeriodTimestamp,
      this.id,
      this.scheduleId,
      this.startPeriod,
      this.endPeriod,
      this.createdAt,
      this.updatedAt,
      this.scheduleInfo});

  ScheduleDetailInfo.fromJson(Map<String, dynamic> json) {
    startPeriodTimestamp = json['startPeriodTimestamp'];
    endPeriodTimestamp = json['endPeriodTimestamp'];
    id = json['id'];
    scheduleId = json['scheduleId'];
    startPeriod = json['startPeriod'];
    endPeriod = json['endPeriod'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    scheduleInfo = ScheduleInfo.fromJson(json['scheduleInfo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startPeriodTimestamp'] = this.startPeriodTimestamp;
    data['endPeriodTimestamp'] = this.endPeriodTimestamp;
    data['id'] = this.id;
    data['scheduleId'] = this.scheduleId;
    data['startPeriod'] = this.startPeriod;
    data['endPeriod'] = this.endPeriod;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.scheduleInfo != null) {
      data['scheduleInfo'] = this.scheduleInfo.toJson();
    }
    return data;
  }
}

class ScheduleInfo {
  String date;
  int startTimestamp;
  int endTimestamp;
  String id;
  String tutorId;
  String startTime;
  String endTime;
  String createdAt;
  String updatedAt;
  Tutor tutorInfo;

  ScheduleInfo(
      {this.date,
      this.startTimestamp,
      this.endTimestamp,
      this.id,
      this.tutorId,
      this.startTime,
      this.endTime,
      this.createdAt,
      this.updatedAt,
      this.tutorInfo});

  ScheduleInfo.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    id = json['id'];
    tutorId = json['tutorId'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    tutorInfo = Tutor.fromJson(json['tutorInfo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['startTimestamp'] = this.startTimestamp;
    data['endTimestamp'] = this.endTimestamp;
    data['id'] = this.id;
    data['tutorId'] = this.tutorId;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.tutorInfo != null) {
      //data['tutorInfo'] = this.tutorInfo.toJson();
    }
    return data;
  }
}
