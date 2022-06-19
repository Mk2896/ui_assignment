import 'package:flutter/material.dart';

class ButtonFormField extends StatelessWidget {
  ButtonFormField({
    Key? key,
    required this.inputWidth,
    required this.inputHeight,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.border,
    this.topPadding = 0.0,
  }) : super(key: key);

  final double inputWidth;
  final double inputHeight;
  final String buttonText;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final OutlinedBorder? border;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: SizedBox(
        width: inputWidth,
        height: inputHeight,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(border),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              fontFamily: "Spartan",
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
