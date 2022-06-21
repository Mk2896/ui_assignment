import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/model/balance.dart';
import 'package:ui_assignment/widgets/global/button_form_field.dart';
import 'package:ui_assignment/widgets/global/custom_text.dart';

class Balance extends StatelessWidget {
  Balance({Key? key}) : super(key: key);
  int gridColorsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      height: MediaQuery.of(context).size.height * 0.2,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Color(constantColor['secondary_background_color']!),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_circle_left_outlined,
                  color: Color(constantColor['text_color']!),
                ),
                CustomText(
                  text: constantText['portfolio_value']!,
                  fontColor: Color(constantColor['text_color']!),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                Icon(
                  Icons.bar_chart,
                  color: Color(constantColor['text_color']!),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomText(
              text: "\$54,375",
              fontColor: Color(constantColor['text_color']!),
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomText(
              text: "In 3 Accounts",
              fontColor: Color(constantColor['hint_color']!),
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: bankInfo.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                gridColorsIndex++;
                if (gridColorsIndex >= gridColors.length) {
                  gridColorsIndex = 0;
                }
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(gridColors[gridColorsIndex]),
                  ),
                  margin: index % 2 == 0
                      ? const EdgeInsets.only(right: 5, bottom: 10)
                      : const EdgeInsets.only(left: 5, bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(
                        text: bankInfo[index]['title']!,
                        fontSize: 16,
                        fontColor: Color(constantColor['text_color']!),
                        fontWeight: FontWeight.w700,
                      ),
                      CustomText(
                        text: bankInfo[index]['account_no']!,
                        fontSize: 10,
                        fontColor: Color(constantColor['text_color']!),
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: bankInfo[index]['amount']!,
                        fontSize: 15,
                        fontColor: Color(constantColor['text_color']!),
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ButtonFormField(
              inputWidth: MediaQuery.of(context).size.width * 0.90,
              inputHeight: 50,
              backgroundColor: Color(constantColor['notification_btn_color']!),
              border: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              buttonText: "Add / Manage Accounts",
              onPressed: () {})
        ],
      ),
    );
  }
}
