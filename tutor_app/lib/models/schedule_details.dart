import 'package:tutor_app/models/tutor.dart';

import 'booking_info.dart';

class ScheduleDetail {
  int startPeriodTimestamp;
  int endPeriodTimestamp;
  String id;
  String scheduleId;
  String tutorId;
  Tutor tutorInfo;
  String startPeriod;
  String endPeriod;
  DateTime createdAt;
  DateTime updatedAt;
  List<BookingInfo> bookingInfo;
  bool isBooked;

  ScheduleDetail({
    this.startPeriodTimestamp,
    this.endPeriodTimestamp,
    this.id,
    this.scheduleId,
    this.startPeriod,
    this.endPeriod,
    this.createdAt,
    this.updatedAt,
    this.bookingInfo,
    this.isBooked,
  });

  ScheduleDetail.fromJson(Map<String, dynamic> json) {
    startPeriodTimestamp = json['startPeriodTimestamp'];
    endPeriodTimestamp = json['endPeriodTimestamp'];
    id = json['id'];
    scheduleId = json['scheduleId'];
    startPeriod = json['startPeriod'];
    endPeriod = json['endPeriod'];
    createdAt = DateTime.tryParse(json['createdAt'] ?? '');
    updatedAt = DateTime.tryParse(json['updatedAt'] ?? '');
    if (json['bookingInfo'] != null) {
      bookingInfo = <BookingInfo>[];
      json['bookingInfo'].forEach((v) {
        bookingInfo.add(BookingInfo.fromJson(v));
      });
    }
    isBooked = json['isBooked'] == null ? false : json['isBooked'];
    if (json['scheduleInfo'] != null) {
      tutorId = json['scheduleInfo']['tutorId'];
      tutorInfo = Tutor.fromJson(json['scheduleInfo']['tutorInfo']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['startPeriodTimestamp'] = startPeriodTimestamp;
    data['endPeriodTimestamp'] = endPeriodTimestamp;
    data['id'] = id;
    data['scheduleId'] = scheduleId;
    data['startPeriod'] = startPeriod;
    data['endPeriod'] = endPeriod;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    if (bookingInfo != null) {
      data['bookingInfo'] = bookingInfo.map((v) => v.toJson()).toList();
    }
    data['isBooked'] = isBooked;
    return data;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
