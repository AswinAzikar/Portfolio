import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
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
      //   decoration: decorationsGivenToTheContainer,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.svgs.gridPattern,
                fit: BoxFit.fill,
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
                children: [
                  SizedBox(
                    width: screenHeight * 0.1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedTextKit(animatedTexts: [
                        ColorizeAnimatedText('Hi I\'m',
                            textStyle: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700),
                            colors: [
                              Colors.amber,
                              const Color.fromARGB(255, 219, 33, 243),
                              Colors.pink
                            ])
                      ]),
                      AnimatedTextKit(animatedTexts: [
                        ColorizeAnimatedText(
                          'Aswin Manmathan S',
                          textStyle: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w700),
                          colors: [Colors.white, Color(0xffCBACF9)],
                        )
                      ]),
                      AnimatedTextKit(animatedTexts: [
                        TypewriterAnimatedText(
                            "I'm  a \n Flutter Developer &  \n a Data Analyst",
                            cursor: '_',
                            speed: Durations.medium1,
                            textStyle: TextStyle(
                                fontSize: 30,
                                color: const Color.fromARGB(255, 6, 17, 68),
                                fontWeight: FontWeight.bold)),
                      ])
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
