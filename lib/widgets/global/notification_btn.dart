import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';

Widget notificationBtn({void Function()? method}) {
  method ??= () {};

  return Stack(
    alignment: Alignment.center,
    children: [
      ElevatedButton(
        onPressed: method,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Color(constantColor['notification_btn_color']!)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        child: null,
      ),
      Icon(
        Icons.notifications_none,
        color: Color(constantColor['text_color']!),
      ),
      Positioned(
        top: 14,
        right: 10,
        child: CircleAvatar(
          backgroundColor: Color(constantColor['theme']!),
          radius: 3,
        ),
      ),
    ],
  );
}
