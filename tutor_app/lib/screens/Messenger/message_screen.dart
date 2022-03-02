import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/messenger_container.dart';
import 'package:tutor_app/widgets/rounded_input_field.dart';
import 'package:tutor_app/widgets/rounded_search_field.dart';

class MessageRoom extends StatelessWidget {
  const MessageRoom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        RoundedSearchField(
          hintIcon: Icons.search,
          hintText: "Search ",
          onChanged: (value) {},
        ),
        MessengerContainer(
          chatName: "Phat",
          lastMess: "Testing",
        ),
        MessengerContainer(
          chatName: "Phat",
          lastMess: "Testing",
        )
      ],
    );
  }
}
