import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(constantColor['background_color']!),
      width: double.infinity,
    );
  }
}
