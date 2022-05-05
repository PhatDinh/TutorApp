import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_app/models/setting.dart';

class AdvancedSetting extends StatefulWidget {
  const AdvancedSetting({Key key}) : super(key: key);

  @override
  State<AdvancedSetting> createState() => _AdvancedSettingState();
}

class _AdvancedSettingState extends State<AdvancedSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Advanced Setting')),
      body: Center(child: Consumer<Setting>(
        builder: (context, value, child) {
          return Row(
            children: [
              Text('Color: '),
              Text('Light Mode'),
              Switch(
                value: value.getColorMode(),
                onChanged: (_) {
                  value.changeColor();
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              Text('Dark mode'),
            ],
          );
        },
      )),
    );
  }
}
