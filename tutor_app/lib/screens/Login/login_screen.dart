import 'package:flutter/material.dart';
import './widgets/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white54,
        appBar: AppBar(
          title: const Text("Login Screen"),
        ),
        body: Body());
  }
}
