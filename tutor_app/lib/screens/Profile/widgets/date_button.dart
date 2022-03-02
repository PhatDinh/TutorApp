import 'package:flutter/material.dart';

class DateEditButton extends StatelessWidget {
  final String boxName;

  const DateEditButton({Key key, this.boxName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(alignment: Alignment(-1, 0), child: Text(boxName)),
            Container(
                width: size.width * 0.9,
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  child: Text(
                    boxName,
                  ),
                  onPressed: () {},
                ))
          ],
        ));
  }
}
