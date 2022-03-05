import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
  final String timeRun;
  final String timeEnd;
  const TimeContainer({
    Key key,
    this.timeRun,
    this.timeEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Meeting active for: ",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Text(timeRun, style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Meeting will end in ",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold)),
              Text(timeEnd, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
