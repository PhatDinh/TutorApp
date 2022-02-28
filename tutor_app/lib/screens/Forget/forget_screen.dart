import 'package:flutter/material.dart';
import 'package:tutor_app/screens/Forget/widgets/body.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password'),
      ),
      body: Body(),
    );
  }
}
