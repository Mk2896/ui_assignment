import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/screens/login_page.dart';

PageViewModel pageViewModal(context) {
  return PageViewModel(
    title: "",
    body: "",
    image: const Image(
      image: AssetImage("assets/images/logo.png"),
    ),
    footer: SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(constantColor['theme_dark']!),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .7,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(constantColor['theme']!),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        constantText['instant_pay']!.toUpperCase(),
                        style: const TextStyle(
                            fontFamily: "Russo One",
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            constantText['tag_line']!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "Play",
            ),
          ),
        ],
      ),
    ),
  );
}
