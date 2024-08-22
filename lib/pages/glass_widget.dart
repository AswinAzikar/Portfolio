import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:personal_portfolio/pages/constants.dart';
import 'package:personal_portfolio/pages/text_button_panel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class GlassWidget extends StatefulWidget {
  const GlassWidget({super.key});

  @override
  State<GlassWidget> createState() => _GlassWidgetState();
}

class _GlassWidgetState extends State<GlassWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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

          //  glassFilterSettings,
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
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      " Flutter",
                      speed: Durations.long4,
                      textStyle:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                      colors: [
                        const Color.fromARGB(255, 226, 25, 142),
                        const Color.fromARGB(255, 165, 86, 80),
                        const Color.fromARGB(255, 27, 67, 179),
                        Colors.black,
                        Colors.white,
                      ],
                    )
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "driven by",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      " Data",
                      speed: Durations.long4,
                      textStyle:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
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
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    " precision.",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
