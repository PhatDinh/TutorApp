import 'package:flutter/material.dart';

class EditDropButton extends StatefulWidget {
  final String boxName;
  final String hintText;
  //final ValueChanged<String> onChanged;
  final List<String> items;
  String startValue;

  EditDropButton(
      {Key key, this.boxName, this.items, this.startValue, this.hintText})
      : super(key: key);

  @override
  State<EditDropButton> createState() => _EditDropButtonState();
}

class _EditDropButtonState extends State<EditDropButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(alignment: Alignment(-1, 0), child: Text(widget.boxName)),
          Container(
              width: size.width * 0.9,
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                  hint: Text(widget.hintText),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  onChanged: (value) {
                    setState(() {
                      widget.startValue = value;
                    });
                  },
                  isExpanded: true,
                  value: widget.startValue,
                  items: widget.items.map((String i) {
                    return DropdownMenuItem(
                      value: i,
                      child: Text(i),
                    );
                  }).toList())),
        ]));
  }
}
