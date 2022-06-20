import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    required this.textEditingController,
    this.keyboardType,
    required this.inputWidth,
    this.inputHeight,
    this.autoFocus = false,
    this.validatorMethod,
    this.prefixIconConstraints,
    this.prefixIcon,
    this.suffixIcon,
    this.filledBackground = false,
    this.filledBackgroundColor,
    this.hintText,
    this.hintColor,
    this.textColor,
    this.border,
    this.focusBorder,
    this.errorText,
    this.topPadding = 0.0,
    this.leftPadding = 0.0,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final double inputWidth;
  final double? inputHeight;
  final bool autoFocus;
  final String? Function(String?)? validatorMethod;
  final BoxConstraints? prefixIconConstraints;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool filledBackground;
  final Color? filledBackgroundColor;
  final String? hintText;
  final Color? hintColor;
  final Color? textColor;
  final InputBorder? border;
  final InputBorder? focusBorder;
  final String? errorText;
  final double topPadding;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: leftPadding),
      child: SizedBox(
        width: inputWidth,
        height: inputHeight,
        child: TextFormField(
          keyboardType: keyboardType,
          autofocus: autoFocus,
          controller: textEditingController,
          validator: validatorMethod,
          style: TextStyle(color: textColor),
          decoration: InputDecoration(
            focusedBorder: focusBorder,
            errorText: errorText,
            prefixIconConstraints: prefixIconConstraints,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: filledBackground,
            fillColor: filledBackgroundColor,
            border: border,
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              fontFamily: "Spartan",
              color: hintColor,
            ),
          ),
        ),
      ),
    );
  }
}
