import 'package:flutter/material.dart';

class RoundedSettingButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, borderColor, iconColor;
  final double sizeButton;
  final double sizeFont;
  final IconData icon;
  const RoundedSettingButton({
    Key key,
    this.sizeButton = 0.9,
    this.text,
    this.sizeFont = 14,
    this.press,
    this.color = Colors.white,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
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
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
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
          primary: color,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          textStyle: TextStyle(
              color: textColor,
              fontSize: sizeFont,
              fontWeight: FontWeight.w500)),
    );
  }
}
