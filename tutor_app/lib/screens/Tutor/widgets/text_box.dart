import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String boxName;
  final String boxDetail;
  const TextBox({
    Key key,
    this.boxName,
    this.boxDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Card(
          elevation: 5,
          color: Colors.grey[100],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  boxName,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  boxDetail,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ));
  }
}
