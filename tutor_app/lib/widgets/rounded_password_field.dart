import 'package:flutter/material.dart';
import '../widgets/text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText = "Your password",
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool onObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          keyboardType: TextInputType.visiblePassword,
          onChanged: widget.onChanged,
          obscureText: onObscure,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              icon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: onObscure == true
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    onObscure = !onObscure;
                  });
                },
              ))),
    );
  }
}
