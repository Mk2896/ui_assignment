import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/globals/cons_text.dart';
import 'package:ui_assignment/screens/notifications.dart';
import 'package:ui_assignment/screens/recieve_money.dart';
import 'package:ui_assignment/screens/tabs/balance.dart';
import 'package:ui_assignment/screens/tabs/home.dart';
import 'package:ui_assignment/screens/tabs/offers.dart';
import 'package:ui_assignment/screens/tabs/rewards.dart';
import 'package:ui_assignment/widgets/global/custom_text.dart';
import 'package:ui_assignment/widgets/global/notification_btn.dart';
import 'package:ui_assignment/widgets/home_page/app_bar_title.dart';
import 'package:ui_assignment/widgets/home_page/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  final double _searchBarHeight = 55;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(constantColor['background_color']!),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        toolbarHeight: _searchBarHeight + 25,
        backgroundColor: Color(constantColor['secondary_background_color']!),
        title: appBarTitle(_searchController, context, _searchBarHeight),
        actions: [
          Container(
            width: 35,
            margin: const EdgeInsets.only(right: 10),
            child: notificationBtn(
                method: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Notifications(),
                    ),
                  );
                },
                top: _searchBarHeight - 25,
                right: 10),
          ),
        ],
        bottom: tabBar(_tabController),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: TabBarView(
          controller: _tabController,
          children: [
            Home(),
            Balance(),
            Offers(),
            Rewards(),
          ],
        ),
      ),
      floatingActionButton: _tabController.index == 0
          ? ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RecieveMoney(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color(constantColor['theme_dark']!)),
              ),
              child: CustomText(
                text: "Recieve Money",
                fontColor: Color(constantColor['text_color']!),
                fontSize: 11,
              ),
            )
          : null,
    );
  }
}
