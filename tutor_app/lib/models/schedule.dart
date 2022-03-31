import 'dart:math';

import 'schedule_details.dart';

class Schedule {
  String id;
  String tutorId;
  String startTime;
  String endTime;
  int startTimestamp;
  int endTimestamp;
  String createdAt;
  bool isBooked;
  List<ScheduleDetails> scheduleDetails;

  Schedule(
      {this.id,
      this.tutorId,
      this.startTime,
      this.endTime,
      this.startTimestamp,
      this.endTimestamp,
      this.createdAt,
      this.isBooked,
      this.scheduleDetails});

  Schedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tutorId = json['tutorId'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    startTimestamp = json['startTimestamp'];
    endTimestamp = json['endTimestamp'];
    createdAt = json['createdAt'];
    isBooked = json['isBooked'];
    if (json['scheduleDetails'] = null) {
      scheduleDetails = <ScheduleDetails>[];
      json['scheduleDetails'].forEach((v) {
        scheduleDetails.add(new ScheduleDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tutorId'] = this.tutorId;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['startTimestamp'] = this.startTimestamp;
    data['endTimestamp'] = this.endTimestamp;
    data['createdAt'] = this.createdAt;
    data['isBooked'] = this.isBooked;
    if (this.scheduleDetails = null) {
      data['scheduleDetails'] =
          this.scheduleDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ScheduleDummy {
  static List<Schedule> offData = generateData(10);

  static Schedule generate() {
    var rd = Random();
    final id = (1 + rd.nextInt(10000));
    final radTime = DateTime.utc(
      (2000 + rd.nextInt(23)),
      (1 + rd.nextInt(11)),
      (1 + rd.nextInt(31)),
    );
    print(radTime.millisecondsSinceEpoch.toString());
    return Schedule(
      id: id.toString(),
      startTime: radTime.millisecondsSinceEpoch.toString(),
      endTime:
          radTime.add(Duration(hours: 1)).millisecondsSinceEpoch.toString(),
    );
  }

  static List<Schedule> generateData(int num) {
    List<Schedule> temp = [];
    for (int i = 0; i < num; i++) {
      temp.add(generate());
    }
    return temp;
  }
}
