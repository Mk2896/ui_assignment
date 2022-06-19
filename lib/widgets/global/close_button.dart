import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';

Widget closeBtn(void Function() method) {
  return IconButton(
    onPressed: method,
    icon: Icon(
      Icons.highlight_off,
      color: Color(constantColor["text_color"]!),
      size: 30,
    ),
  );
}
