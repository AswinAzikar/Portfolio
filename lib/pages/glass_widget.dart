import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/animated_text_buttons.dart';
import 'package:personal_portfolio/pages/constants.dart';

class GlassWidget extends StatelessWidget {
  const GlassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * .6,
      width: double.maxFinite,
      decoration: decorationsGivenToTheContainer,
      child: Stack(
        children: [
          glassFilterSettings,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const AnimatedTextButtons(
                    title: "Home",
                  ),
                  const AnimatedTextButtons(
                    title: "About",
                  ),
                  gapWidth,
                  const AnimatedTextButtons(
                    title: "Resume",
                  ),
                  gapWidth,
                  const AnimatedTextButtons(
                    title: "Projects",
                  ),
                  gapWidth,
                  const AnimatedTextButtons(
                    title: "Contact me",
                  ),
                  gapWidth,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
