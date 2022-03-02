import 'package:flutter/material.dart';
import '../widgets/text_field_container.dart';

class RoundedSearchField extends StatelessWidget {
  final String hintText;
  final IconData hintIcon;
  final ValueChanged<String> onChanged;
  const RoundedSearchField({
    Key key,
    this.hintText,
    this.hintIcon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      borderRadius: 15,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none, hintText: hintText, icon: Icon(hintIcon)),
      ),
    );
  }
}
