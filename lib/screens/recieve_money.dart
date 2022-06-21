import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/screens/home_page.dart';
import 'package:ui_assignment/widgets/global/close_button.dart';
import 'package:ui_assignment/widgets/global/custom_text.dart';
import 'package:ui_assignment/widgets/recieve_money/other_option_tile.dart';

class RecieveMoney extends StatelessWidget {
  const RecieveMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(constantColor['background_color']!),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                          text: constantText['recieve_money']!,
                          fontColor: Color(constantColor['text_color']!),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        closeBtn(
                          () => Navigator.of(context).pop(),
                        )
                      ],
                    ),
                    const Image(
                      image: AssetImage("assets/images/qr_code.png"),
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: CustomText(
                  text: constantText['other_options']!,
                  fontColor: Color(constantColor['text_color']!),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              otherOptionTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: constantText['pay_id']!,
                      fontColor: Color(constantColor['text_color']!),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "xyz@524899652",
                      fontColor: Color(constantColor['hint_color']!),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.content_copy_outlined,
                  color: Color(constantColor['text_color']!),
                ),
              ),
              otherOptionTile(
                title: CustomText(
                  text: constantText['show_bank_details']!,
                  fontColor: Color(constantColor['text_color']!),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(constantColor['text_color']!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
