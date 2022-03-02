import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpcomingLeasson extends StatelessWidget {
  const UpcomingLeasson({Key key}) : super(key: key);

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
                      child: const Icon(Icons.account_circle, size: 64),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Tutor name',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("Date"),
                          Text("16:00")
                        ]),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Icon(FontAwesomeIcons.doorOpen)),
                  ]),
                ]))));
  }
}
