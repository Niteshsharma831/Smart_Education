import 'package:flutter/material.dart';
import 'package:peakpath/Dashboard.dart';
import 'package:peakpath/RegistrationPage.dart';
import 'package:peakpath/courses.dart';
import 'package:peakpath/loginPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'loginPage',
      routes: {
        'loginPage': (context) => const LoginPageScreen(),
        'RegistrationPage': (context) => const RegistrationPageScreen(),
        'Dashboard': (context) => const DashboardScreen(),
        'courses': (context) => CourseScreen(),
      },
    );
  }
}
