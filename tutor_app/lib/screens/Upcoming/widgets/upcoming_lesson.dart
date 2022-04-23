import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpcomingLeasson extends StatelessWidget {
  final String date;
  final String tutorName;
  final String time;
  final Function press;
  final String tutorAvatar;
  final bool isHistory;

  const UpcomingLeasson(
      {Key key,
      this.tutorName,
      this.tutorAvatar,
      this.date,
      this.time,
      this.press,
      this.isHistory = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    TextButton(
                      onPressed: () {},
                      child: SizedBox(
                          height: 60,
                          width: 50,
                          child: ClipOval(child: Image.network(tutorAvatar))),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tutorName,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(date),
                          Text(time)
                        ]),
                    const Spacer(),
                    if (isHistory == false)
                      TextButton(
                          onPressed: press,
                          child: const Icon(FontAwesomeIcons.doorOpen)),
                  ]),
                ]))));
  }
}
