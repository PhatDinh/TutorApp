import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Login/widgets/background.dart';
import 'package:tutor_app/widgets/already_have_an_account_check.dart';
import 'package:tutor_app/widgets/other_option_login.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "SIGN UP",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
        ),
        RoundedInputField(
          hintText: "Full Name",
        ),
        RoundedInputField(
          hintText: "Email",
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          hintText: "Confirm password",
          onChanged: (value) {},
        ),
        RoundedButton(
          text: "REGISTER",
          press: () {},
        ),
        OtherOptionLogin(),
        AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.pop(context);
            })
      ],
    ));
  }
}
