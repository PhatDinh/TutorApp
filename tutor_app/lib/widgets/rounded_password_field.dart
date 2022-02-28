import 'package:flutter/material.dart';
import '../widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Your password",
        icon: Icon(Icons.lock),
      ),
    ));
  }
}
