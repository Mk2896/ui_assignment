import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/widgets/global/text_form_field.dart';

Widget appBarTitle(
  searchController,
  BuildContext context,
  double searchBarHeight,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CircleAvatar(
        radius: 24,
        backgroundImage: const AssetImage("assets/images/profile.png"),
        backgroundColor: Color(constantColor['background_color']!),
      ),
      Expanded(
        child: MyTextFormField(
          textEditingController: searchController,
          inputWidth: MediaQuery.of(context).size.width * 0.8,
          filledBackground: true,
          filledBackgroundColor:
              Color(constantColor['notification_btn_color']!),
          leftPadding: 10,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          focusBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          hintColor: Color(constantColor['hint_color']!),
          textColor: Color(constantColor['text_color']!),
          hintText: constantText['search_bar_text'],
          suffixIcon: Icon(
            Icons.search,
            color: Color(constantColor['hint_color']!),
          ),
          inputHeight: searchBarHeight,
        ),
      )
    ],
  );
}
