import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_assignment/screens/intro.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Intro(),
        ),
      ),
    );

    return Container(
      color: const Color(0xffFFBB1F),
      width: double.infinity,
      height: double.infinity,
      child: const Image(
        image: AssetImage("assets/images/splash.gif"),
      ),
    );
  }
}
