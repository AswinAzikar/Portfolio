// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:personal_portfolio/pages/constants.dart';
import 'package:personal_portfolio/pages/text_button_panel.dart';

class GlassWidget extends StatefulWidget {
  final ScrollController scroller;
  const GlassWidget({
    Key? key,
    required this.scroller,
  }) : super(key: key);

  @override
  State<GlassWidget> createState() => _GlassWidgetState();
}

class _GlassWidgetState extends State<GlassWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    
    double textScaleFactor =
        screenWidth / 1600; // Adjust the divisor for resizing the text based on the design

    // Text styles with dynamic font size
    TextStyle titleStyle = TextStyle(
      fontSize: 50 * textScaleFactor,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );

    TextStyle animatedTextStyle = TextStyle(
      fontSize: 50 * textScaleFactor,
      fontWeight: FontWeight.w700,
    );

    return Container(
      height: screenHeight * .6,
      width: double.maxFinite,
      decoration: decorationsGivenToTheContainer,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                Assets.svgs.spotLeft,
                fit: BoxFit.contain,
                color: Colors.white.withOpacity(0.07),
              ),
              SvgPicture.asset(
                Assets.svgs.spotRight,
                fit: BoxFit.contain,
                color: Colors.white.withOpacity(0.07),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.svgs.gridPattern,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButtonPanel(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Elevating Software Development with",
                    style: titleStyle,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      " Flutter ",
                      speed: Durations.long4,
                      textStyle: animatedTextStyle,
                      colors: [
                        const Color.fromARGB(255, 226, 25, 142),
                        const Color.fromARGB(255, 165, 86, 80),
                        const Color.fromARGB(255, 27, 67, 179),
                        Colors.black,
                        Colors.white,
                      ],
                    )
                  ]),
                  Text(
                    ", ",
                    style: titleStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "driven by",
                    style: titleStyle,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      " Data",
                      speed: Durations.long4,
                      textStyle: animatedTextStyle,
                      colors: [
                        const Color.fromARGB(255, 226, 25, 142),
                        const Color.fromARGB(255, 165, 86, 80),
                        const Color.fromARGB(255, 27, 67, 179),
                        Colors.black,
                        Colors.white,
                      ],
                    )
                  ]),
                  Text(
                    " for",
                    style: titleStyle,
                  ),
                  Text(
                    " precision.",
                    style: titleStyle,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 4,
          ),
          Container(
            child: Text(
              "scroll down",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
