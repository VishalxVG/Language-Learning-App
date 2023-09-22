import 'package:flutter/material.dart';
import 'package:learnle/customs/translator_page.dart';
import 'package:learnle/models/bottom_navigation_bar.dart';
import 'package:learnle/pages/homePage.dart';

import 'package:learnle/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LearnLE',
      // theme: ThemeData(
      //   // primarySwatch: Colors.green,
      //   backgroundColor: Colors.white,
      //   appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: LoginScreen(),
    );
  }
}
