import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Tutor/widgets/section_box.dart';

class OverviewContainer extends StatelessWidget {
  final String reason;
  final String result;
  const OverviewContainer({
    this.reason,
    this.result,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBox(
      sectionName: 'Overview',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionBox(
            sectionName: 'Why take this course',
            child: Text(reason),
          ),
          SectionBox(
            sectionName: 'What will you be able to do',
            child: Text(result),
          ),
        ],
      ),
    );
  }
}
