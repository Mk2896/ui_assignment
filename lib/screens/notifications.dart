import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/model/notifications.dart';
import 'package:ui_assignment/screens/home_page.dart';
import 'package:ui_assignment/widgets/global/close_button.dart';
import 'package:ui_assignment/widgets/global/custom_text.dart';
import 'package:ui_assignment/widgets/notifications.dart/custom_notifications.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(constantColor['background_color']!),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(
              color: Color(constantColor['secondary_background_color']!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: constantText['notifications']!,
                      fontColor: Color(constantColor['text_color']!),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    closeBtn(
                      () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: myNotifications.length,
                      itemBuilder: (context, index) {
                        return customNotifications(
                            context: context,
                            notification: myNotifications[index]);
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: constantText['recent_notifications']!,
                      fontColor: Color(constantColor['text_color']!),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Color(constantColor['text_color']!),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
