import 'package:flutter/material.dart';

class RoundedTabText extends StatelessWidget {
  final String nameTab;
  final VoidCallback onTap;
  const RoundedTabText({
    this.nameTab,
    this.onTap = null,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: OutlinedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).buttonColor)),
        onPressed: onTap,
        child: Text(
          nameTab,
          style: TextStyle(
              fontSize: 12, color: Theme.of(context).textTheme.button.color),
        ),
      ),
    );
  }
}
