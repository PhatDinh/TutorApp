import 'dart:math';

import 'package:tutor_app/models/tutor.dart';

import 'schedule_details.dart';

class Schedule {
  String id;
  String userId;
  String tutorId;
  String scheduleDetailId;
  String tutorMeetingLink;
  String studentMeetingLink;
  String startTime;
  String endTime;
  String studentRequest;
  String tutorReview;
  String recordUrl;
  int scoreByTutor;
  int startTimestamp;
  int endTimestamp;
  String createdAt;
  String updatedAt;
  bool isBooked;
  bool isDeleted;
  bool showRecordUrl;
  List<ScheduleDetail> scheduleDetails;
  ScheduleDetail scheduleDetailInfo;

  Schedule({
    this.id,
    this.userId,
    this.tutorId,
    this.scheduleDetailId,
    this.tutorMeetingLink,
    this.studentMeetingLink,
    this.startTime,
    this.endTime,
    this.studentRequest,
    this.tutorReview,
    this.recordUrl,
    this.scoreByTutor,
    this.startTimestamp,
    this.endTimestamp,
    this.createdAt,
    this.updatedAt,
    this.isBooked,
    this.isDeleted,
    this.showRecordUrl,
    this.scheduleDetails,
    this.scheduleDetailInfo,
  });

  Schedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    scheduleDetailId = json['scheduleDetailId'];
    tutorMeetingLink = json['tutorMeetingLink'];
    studentMeetingLink = json['studentMeetingLink'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    studentRequest = json['studentRequest'];
    tutorReview = json['tutorReview'];
    recordUrl = json['recordUrl'];
    scoreByTutor = json['scoreByTutor'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isBooked = json['isBooked'];
    isDeleted = json['isDeleted'];
    showRecordUrl = json['showRecordUrl'];
    if (json['scheduleDetails'] != null) {
      scheduleDetails = <ScheduleDetail>[];
      json['scheduleDetails'].forEach((v) {
        scheduleDetails.add(ScheduleDetail.fromJson(v));
      });
    }
    if (json['scheduleDetailInfo'] != null) {
      scheduleDetailInfo = ScheduleDetail.fromJson(json['scheduleDetailInfo']);
    }
    startTimestamp =
        json['startTimestamp'] ?? scheduleDetailInfo?.startPeriodTimestamp;
    endTimestamp =
        json['endTimestamp'] ?? scheduleDetailInfo?.endPeriodTimestamp;
    tutorId = json['tutorId'] ?? scheduleDetailInfo?.tutorId;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['tutorId'] = tutorId;
    data['scheduleDetailId'] = scheduleDetailId;
    data['tutorMeetingLink'] = tutorMeetingLink;
    data['studentMeetingLink'] = studentMeetingLink;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['studentRequest'] = studentRequest;
    data['tutorReview'] = tutorReview;
    data['recordUrl'] = recordUrl;
    data['scoreByTutor'] = scoreByTutor;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['isBooked'] = isBooked;
    data['isDeleted'] = isDeleted;
    data['showRecordUrl'] = showRecordUrl;
    if (scheduleDetails != null) {
      data['scheduleDetails'] = scheduleDetails.map((v) => v.toJson()).toList();
    }
    data['scheduleDetailInfo'] = scheduleDetailInfo?.toJson();
    data['startTimestamp'] = startTimestamp;
    data['endTimestamp'] = endTimestamp;
    return data;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
