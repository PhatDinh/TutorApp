import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Login/login_manager.dart';
import 'package:tutor_app/screens/Login/widgets/background.dart';
import 'package:tutor_app/widgets/already_have_an_account_check.dart';
import 'package:tutor_app/widgets/other_option_login.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_password_field.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email, pass, cpass;

  bool checkPassword() {
    if (pass != cpass) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password and Confirm password are not match'),
        ),
      );
      return false;
    }
    return true;
  }

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
          hintText: "Email",
          onChanged: (value) {
            setState(() {
              email = value;
            });
          },
        ),
        RoundedPasswordField(
          onChanged: (value) {
            setState(() {
              pass = value;
            });
          },
        ),
        RoundedPasswordField(
          hintText: "Confirm password",
          onChanged: (value) {
            setState(() {
              cpass = value;
            });
          },
        ),
        RoundedButton(
          text: "REGISTER",
          press: () {
            if (checkPassword() == true) {
              LoginManager.register(email, pass);
            }
          },
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
