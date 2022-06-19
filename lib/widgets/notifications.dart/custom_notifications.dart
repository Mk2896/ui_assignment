import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/widgets/global/custom_text.dart';
import 'package:ui_assignment/widgets/global/notification_btn.dart';

Widget customNotifications({
  required BuildContext context,
  required Map<String, dynamic> notification,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: notification['title'],
              fontColor: Color(constantColor['text_color']!),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * .65,
              child: CustomText(
                text: notification['sub_title'],
                fontColor: Color(constantColor['hint_color']!),
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomText(
              text: notification['footer'],
              fontColor: Color(constantColor['hint_color']!),
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        Expanded(
          child: notificationBtn(),
        ),
      ],
    ),
  );
}
