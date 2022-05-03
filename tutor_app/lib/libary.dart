import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Libary {
  static String webUrl = 'https://lettutor.com/';
  //Login Screen
  static List<String> loginEmail = ['Your Email', 'Email của bạn'];
  static List<String> loginPass = ['Your password', 'Mật khẩu của bạn'];
  static List<String> login = ['Login', 'Đăng nhập'];
  static List<String> loginForgot = ['Forgot password ? ', 'Quên mật khẩu ?'];
}

class Style {
  static const int _blackPrimaryValue = 0xFF000000;
  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_blackPrimaryValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  static ThemeData lightMode = ThemeData(
      primarySwatch: Colors.blue,
      buttonColor: Colors.white,
      //buttonTheme: const ButtonThemeData(buttonColor: primaryBlack),
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: const TextTheme(button: TextStyle(color: Colors.black)));

  static ThemeData darkMode = ThemeData(
      //primaryColor: primaryBlack,
      primarySwatch: primaryBlack,
      buttonColor: primaryBlack,
      buttonTheme: const ButtonThemeData(buttonColor: primaryBlack),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(button: TextStyle(color: Colors.white)));
}
