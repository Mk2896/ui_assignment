import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/model/offers.dart';
import 'package:ui_assignment/widgets/global/custom_text.dart';

class Offers extends StatelessWidget {
  Offers({Key? key}) : super(key: key);

  int offersBgColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: offers.length,
        itemBuilder: (context, index) {
          offersBgColorIndex++;
          if (offersBgColorIndex >= offersBgColor.length) {
            offersBgColorIndex = 0;
          }
          return Card(
            color: Color(offersBgColor[offersBgColorIndex]),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(
                        image: AssetImage("assets/images/offers_img_bg.png"),
                      ),
                      Image(
                        image: AssetImage(offers[index]['image']),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width * 0.62,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: CustomText(
                            text: offers[index]['title'],
                            fontColor: Color(constantColor['text_color']!),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (offers[index].containsKey('subtitle')) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: CustomText(
                              text: offers[index]['subtitle'],
                              fontColor: Color(constantColor['text_color']!),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            right: 10,
                          ),
                          child: CustomText(
                            text: offers[index]['description'],
                            fontColor: Color(constantColor['text_color']!),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
