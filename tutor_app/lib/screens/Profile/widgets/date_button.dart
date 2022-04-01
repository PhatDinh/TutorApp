import 'package:flutter/material.dart';
import 'package:tutor_app/models/user_dummy.dart';

class DateEditButton extends StatefulWidget {
  String boxName;

  DateEditButton({Key key, this.boxName}) : super(key: key);

  @override
  State<DateEditButton> createState() => _DateEditButtonState();
}

class _DateEditButtonState extends State<DateEditButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(alignment: Alignment(-1, 0), child: Text("Birthday")),
            Container(
                width: size.width * 0.9,
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: UserDummy.birthday,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          child: Text("Select"),
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1990, 1),
                              lastDate: DateTime(2022, 4),
                            ).then((pickedDate) {
                              setState(() {
                                widget.boxName = pickedDate.toString();
                              });
                            });
                          },
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ));
  }
}
