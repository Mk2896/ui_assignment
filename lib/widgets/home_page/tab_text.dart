import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';

Widget tabText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: "Nunito",
      fontSize: 17,
      fontWeight: FontWeight.w700,
      color: Color(constantColor['text_color']!),
    ),
  );
}
