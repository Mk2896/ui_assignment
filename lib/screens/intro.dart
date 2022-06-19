import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ui_assignment/globals/cons_color.dart';
import 'package:ui_assignment/widgets/intro/page_view_modal_widget.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(constantColor['background_color']!),
      showSkipButton: false,
      showBackButton: false,
      showDoneButton: false,
      showNextButton: false,
      isBottomSafeArea: true,
      isTopSafeArea: true,
      pages: [
        pageViewModal(context),
        pageViewModal(context),
        pageViewModal(context),
        pageViewModal(context),
      ],
    );
  }
}
