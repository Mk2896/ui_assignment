import 'package:flutter/material.dart';
import 'package:ui_assignment/screens/home_page.dart';
import 'package:ui_assignment/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Payment App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Splash(),
      home: HomePage(),
    );
  }
}
