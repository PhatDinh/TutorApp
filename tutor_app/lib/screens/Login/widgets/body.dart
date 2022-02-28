import 'package:flutter/material.dart';
import 'background.dart';

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
          Container(
            width: size.width * 0.7,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your email",
                  icon: Icon(Icons.person)),
            ),
          ),
          Container(
            width: size.width * 0.7,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(25)),
            child: TextFormField(
              validator: (String value) {
                if (value.trim().isEmpty) return "Password is required";
              },
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your password",
                  icon: Icon(Icons.lock)),
            ),
          )
        ],
      ),
    );
  }
}
