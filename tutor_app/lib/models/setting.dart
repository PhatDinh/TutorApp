import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Setting extends ChangeNotifier {
  bool _isDarkMode = false;

  getColorMode() => _isDarkMode;

  void changeColor() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
