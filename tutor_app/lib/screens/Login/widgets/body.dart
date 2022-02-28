import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Forget/forget_screen.dart';
import 'package:tutor_app/screens/Register/register_screen.dart';
import 'package:tutor_app/widgets/already_have_an_account_check.dart';
import 'package:tutor_app/widgets/other_option_login.dart';
import 'package:tutor_app/widgets/rounded_button.dart';
import 'package:tutor_app/widgets/rounded_password_field.dart';
import './background.dart';
//import '../../../widgets/text_field_container.dart';
import '../../../widgets/rounded_input_field.dart';
import '../../../widgets/rounded_password_field.dart';

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
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          Align(
            alignment: Alignment(0.5, 0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgetScreen()));
                },
                child: Text(
                  "Forgot password ?",
                )),
          ),
          RoundedButton(
            press: () {},
            text: "LOGIN",
          ),
          OtherOptionLogin(),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
          )
        ],
      ),
    );
  }
}
