import 'package:flutter/material.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      color: Colors.lightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Placeholder for video',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
