import 'package:flutter/material.dart';
import 'Ui/chapter_screen.dart';
import 'Ui/home_screen.dart';
import 'Ui/lecture_screen.dart';
import 'Ui/login_screen.dart';
import 'Ui/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ChapterScreen.routeName: (context) => const ChapterScreen(),
        LectureScreen.routeName: (context) => const LectureScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
      },
    );
  }
}
