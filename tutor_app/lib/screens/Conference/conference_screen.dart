import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_app/screens/Conference/widgets/time_container.dart';

class ConferenceScreen extends StatelessWidget {
  const ConferenceScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: TimeContainer(
                  timeRun: "00:00:01",
                  timeEnd: "1:59:59",
                )),
            Center(
              child: CircleAvatar(
                radius: 80,
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: size.width * 0.85,
                    height: size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon: Icon(FontAwesomeIcons.microphone)),
                        IconButton(icon: Icon(FontAwesomeIcons.video)),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.facebookMessenger)),
                        IconButton(icon: Icon(FontAwesomeIcons.fistRaised)),
                        IconButton(
                          icon: Icon(CupertinoIcons.arrow_right),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
