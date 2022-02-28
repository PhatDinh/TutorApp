import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Login/widgets/background.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
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
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Enter your email address and we'll send you a link to reset your password",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
          ),
          RoundedInputField(
            hintText: "Enter your email",
          ),
          RoundedButton(
            text: 'SEND',
            press: () {},
          )
        ],
      ),
    );
  }
}
