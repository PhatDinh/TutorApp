import 'package:flutter/material.dart';
import '../widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText = "Your password",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        icon: Icon(Icons.lock),
      ),
    ));
  }
}
