import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/animated_text_buttons.dart';
import 'package:personal_portfolio/pages/constants.dart';

class TextButtonPanel extends StatelessWidget {
  const TextButtonPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        padding: EdgeInsets.all(8),
        height: screenHeight * .06,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
