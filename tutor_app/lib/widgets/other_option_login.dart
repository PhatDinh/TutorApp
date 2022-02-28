import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtherOptionLogin extends StatelessWidget {
  const OtherOptionLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(children: [
        Text("Or continue with"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                splashRadius: 1,
                onPressed: () {},
                icon:
                    const Icon(FontAwesomeIcons.facebook, color: Colors.blue)),
            IconButton(
                splashRadius: 1,
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.redAccent,
                )),
          ],
        )
      ]),
    );
  }
}
