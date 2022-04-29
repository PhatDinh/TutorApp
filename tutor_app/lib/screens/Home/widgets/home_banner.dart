import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/rounded_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      height: size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome to LetTutor!',
            style: TextStyle(color: Colors.white),
          ),
          RoundedButton(
            sizeButton: 0.35,
            sizeFont: 10,
            press: () {},
            text: "Book a lesson",
          )
        ],
      ),
    );
  }
}
