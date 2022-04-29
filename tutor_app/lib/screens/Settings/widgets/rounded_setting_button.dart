import 'package:flutter/material.dart';

class RoundedSettingButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color borderColor;
  final double sizeButton;
  final double sizeFont;
  final IconData icon;
  const RoundedSettingButton({
    Key key,
    this.sizeButton = 0.9,
    this.text,
    this.sizeFont = 14,
    this.press,
    this.borderColor = Colors.grey,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * sizeButton,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(Theme.of(context).textTheme.button.color,
            Theme.of(context).buttonColor, Theme.of(context).iconTheme.color),
      ),
    );
  }

  Widget newElevatedButton(Color textColor, Color btnColor, Color iconColor) {
    return ElevatedButton.icon(
      label: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      icon: Icon(
        icon,
        color: iconColor,
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          alignment: Alignment(-1, 0),
          primary: btnColor,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          textStyle: TextStyle(
              color: textColor,
              fontSize: sizeFont,
              fontWeight: FontWeight.w500)),
    );
  }
}
