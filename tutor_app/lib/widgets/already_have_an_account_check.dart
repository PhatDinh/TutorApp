import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? "Don't have account? " : "Already have an account? "),
        GestureDetector(
          onTap: press,
          child: Text(login ? 'Sign Up' : 'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
        )
      ],
    );
  }
}
