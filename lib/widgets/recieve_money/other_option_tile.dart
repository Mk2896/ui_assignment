import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';

Widget otherOptionTile({required Widget title, required Widget trailing}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: ListTile(
      tileColor: Color(constantColor['secondary_background_color']!),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: title,
      trailing: trailing,
    ),
  );
}
