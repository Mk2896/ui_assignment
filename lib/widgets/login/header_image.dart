import 'package:flutter/material.dart';
import 'package:ui_assignment/globals/cons_text.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      clipBehavior: Clip.none,
      children: [
        const Image(
          image: AssetImage("assets/images/login_bg.png"),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.25,
          child: const Image(
            image: AssetImage("assets/images/login_bg_stars.png"),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.15,
          bottom: MediaQuery.of(context).size.height * 0.05,
          child: const Image(
            image: AssetImage("assets/images/mobile_and_lady.png"),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.5,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              constantText['login_headline']!.toUpperCase(),
              style: const TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  overflow: TextOverflow.clip),
            ),
          ),
        ),
      ],
    );
  }
}
