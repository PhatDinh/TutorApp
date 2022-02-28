import 'package:flutter/material.dart';
import './background.dart';
import './text_field_container.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/let_tutor_icon.png",
            height: size.height * 0.2,
            width: size.width * 0.2,
          ),
          const Text(
            "LET TUTOR",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          Container(
            width: size.width * 0.7,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25)),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your password",
                  icon: Icon(Icons.lock)),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Forget your password ?",
              )),
          TextFieldContainer(child: Text('LOGIN')),
        ],
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData hintIcon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.hintIcon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Your email",
            icon: Icon(hintIcon)),
      ),
    );
  }
}
