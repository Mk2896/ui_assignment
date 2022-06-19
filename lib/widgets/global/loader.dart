import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({
    Key? key,
    required this.message,
    required this.bgColor,
    required this.loaderColor,
  });

  final String message;
  final Color bgColor;
  final Color loaderColor;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: bgColor,
      children: [
        Container(
          margin: const EdgeInsets.all(15.0),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(loaderColor),
              ),
              Text(
                message.toUpperCase(),
                style: TextStyle(color: loaderColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
