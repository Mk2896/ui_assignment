import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/screens/notifications.dart';
import 'package:ui_assignment/widgets/global/notification_btn.dart';
import 'package:ui_assignment/widgets/global/text_form_field.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(constantColor['background_color']!),
      appBar: AppBar(
        backgroundColor: Color(constantColor['background_color']!),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: const AssetImage("assets/images/profile.png"),
              backgroundColor: Color(constantColor['background_color']!),
            ),
            Expanded(
              child: MyTextFormField(
                textEditingController: _searchController,
                inputWidth: MediaQuery.of(context).size.width * 0.8,
                filledBackground: true,
                filledBackgroundColor:
                    Color(constantColor['notification_btn_color']!),
                leftPadding: 10,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                hintColor: Color(constantColor['hint_color']!),
                hintText: constantText['search_bar_text'],
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(constantColor['hint_color']!),
                ),
                inputHeight: 45,
              ),
            )
          ],
        ),
        actions: [
          Container(
            width: 35,
            margin: const EdgeInsets.only(right: 10),
            child: notificationBtn(method: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Notifications(),
                ),
              );
            }),
          ),
        ],
      ),
      body: Center(
        child: Text("Yes"),
      ),
    );
  }
}
