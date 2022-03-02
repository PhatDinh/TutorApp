import 'package:flutter/material.dart';

class RoundedTabText extends StatelessWidget {
  final String nameTab;
  const RoundedTabText({
    this.nameTab,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: OutlinedButton(
        onPressed: null,
        child: Text(
          nameTab,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
