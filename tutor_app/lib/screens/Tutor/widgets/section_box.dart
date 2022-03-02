import 'package:flutter/material.dart';

class SectionBox extends StatelessWidget {
  final Widget child;
  final String sectionName;
  const SectionBox({Key key, this.child, this.sectionName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sectionName,
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
          child,
        ],
      ),
    );
  }
}
