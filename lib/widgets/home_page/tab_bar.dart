import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/widgets/home_page/my_tabbar_indicator.dart';
import 'package:ui_assignment/widgets/home_page/tab_text.dart';

TabBar tabBar(tabController) {
  return TabBar(
    indicatorSize: TabBarIndicatorSize.label,
    labelPadding: const EdgeInsets.only(bottom: 5),
    indicatorColor: Color(constantColor['text_color']!),
    indicatorWeight: 3,
    indicator: MyTabbarIndicator(
        indicatorColor: Color(constantColor['text_color']!),
        indicatorHeight: 4,
        indicatorSize: IndicatorSize.full),
    controller: tabController,
    tabs: [
      tabText("Home"),
      tabText("Balance"),
      tabText("Offers"),
      tabText("Rewards"),
    ],
  );
}
