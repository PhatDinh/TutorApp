import 'package:flutter/material.dart';

class MessengerContainer extends StatelessWidget {
  final String chatName;
  final String lastMess;

  const MessengerContainer({Key key, this.chatName, this.lastMess})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatName,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  lastMess,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
