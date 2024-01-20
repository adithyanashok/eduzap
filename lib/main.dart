import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/course_screen.dart';
import 'package:eduzap/presentation/home/home_screen.dart';
import 'package:eduzap/presentation/main/main_screen.dart';
import 'package:eduzap/presentation/onboarding/onboarding_screen.dart';
import 'package:eduzap/presentation/signin/signin_screen.dart';
import 'package:eduzap/presentation/signup/signup_option_screen.dart';
import 'package:eduzap/presentation/signup/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduZap',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryBlue),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const CourseScreen(),
    );
  }
}
