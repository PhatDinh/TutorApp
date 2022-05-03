import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutor_app/libary.dart';
import 'package:tutor_app/screens/Courses/course_detail_screen.dart';
import 'package:tutor_app/screens/Home/home_screen.dart';
import 'package:tutor_app/screens/Login/login_screen.dart';
import 'package:tutor_app/screens/Tutor/tutors_detail_screen.dart';
import 'package:localization/localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Style.lightMode,
      darkTheme: Style.darkMode,
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      home: LoginScreen(),
      supportedLocales: [
        Locale('vi', 'VN'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: {
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalJsonLocalization.delegate,
      },
      localeResolutionCallback: ((locale, supportedLocales) {
        for (var supportedLocaleLanguage in supportedLocales) {
          if (supportedLocaleLanguage.languageCode == locale.languageCode &&
              supportedLocaleLanguage.countryCode == locale.countryCode) {
            return supportedLocaleLanguage;
          }
        }
        return supportedLocales.first;
      }),
      routes: {
        '/tutor-detail': (context) => TutorsDetailScreen(),
        '/course-detail': (context) => CourseDetailScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
