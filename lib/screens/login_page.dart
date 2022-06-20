import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/screens/home_page.dart';
import 'package:ui_assignment/widgets/global/button_form_field.dart';
import 'package:ui_assignment/widgets/global/loader.dart';
import 'package:ui_assignment/widgets/global/text_form_field.dart';
import 'package:ui_assignment/widgets/login/header_image.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textFieldController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _errorText;

  void formSubmit() {
    if (_formKey.currentState!.validate()) {
      if (_textFieldController.text.toString() != "3422696957") {
        _errorText = "Invalid Mobile Number";
      } else {
        _errorText = null;
        showDialog(
          context: context,
          barrierDismissible: false,
          barrierColor: Color(constantColor['secondary_background_color']!)
              .withOpacity(0.9),
          builder: (BuildContext context) => Loader(
            message: "Loading",
            bgColor: Colors.white,
            loaderColor: Color(constantColor["theme"]!),
          ),
        );
        Timer(const Duration(seconds: 2), () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        });
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(constantColor['background_color']!),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const HeaderImage(),
              MyTextFormField(
                textEditingController: _textFieldController,
                topPadding: 10,
                errorText: _errorText,
                inputWidth: MediaQuery.of(context).size.width * 0.9,
                keyboardType: TextInputType.number,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                focusBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(constantColor['theme']!),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
                filledBackground: true,
                filledBackgroundColor: Color(constantColor['text_color']!),
                hintText: "Enter Mobile Number",
                hintColor: Color(constantColor['hint_color']!),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 10),
                prefixIcon: Center(
                  widthFactor: 1.8,
                  child: Text(
                    "+ 92",
                    style: TextStyle(
                      fontFamily: "Spartan",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(constantColor['theme']!),
                    ),
                  ),
                ),
                validatorMethod: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Moblie Number';
                  } else {
                    if (value.length != 10) {
                      return "Please Enter A Valid Number";
                    } else {
                      return null;
                    }
                  }
                },
              ),
              ButtonFormField(
                inputWidth: MediaQuery.of(context).size.width * 0.9,
                inputHeight: 50,
                buttonText: "Verify",
                onPressed: formSubmit,
                backgroundColor: Color(constantColor['theme']!),
                topPadding: 10,
                border: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Your personal details are safe with us",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                    fontSize: 14,
                    color: Color(constantColor['secondary_text_color']!),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Read our Privacy Policy and Terms and Conditions",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.001,
                    fontSize: 14,
                    color: Color(constantColor['secondary_text_color']!),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
