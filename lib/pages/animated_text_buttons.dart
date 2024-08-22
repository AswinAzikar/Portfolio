import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/gen/fonts.gen.dart';
import 'package:personal_portfolio/pages/constants.dart';

class AnimatedTextButtons extends StatefulWidget {
  final String title;

  const AnimatedTextButtons({
    super.key,
    required this.title,
  });

  @override
  State<AnimatedTextButtons> createState() => _AnimatedTextButtonsState();
}

class _AnimatedTextButtonsState extends State<AnimatedTextButtons> {
  bool _isClicked = false;
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
          child: TextButton(
            onPressed: () {
              setState(() {
                _isClicked = !_isClicked;
              });
            },
            style: TextButton.styleFrom(),
            child: _isHovered
                ? AnimatedTextKit(animatedTexts: [
                    ColorizeAnimatedText(
                      widget.title,
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                      colors: [
                        Colors.white,
                        Color(0xffCBACF9),
                      ],
                    )
                  ])
                : Text(
                    widget.title,
                    style: TextStyle(
                      backgroundColor: Colors.transparent,
                      fontStyle: FontStyle.normal,
                      color: themeColor,
                      fontSize: 12,
                    ),
                  ),
          ),
        ),
        // _isHovered
        //     ? Transform(
        //         transform: Matrix4.skewX(-0.3),
        //         alignment: Alignment.center,
        //         child: Container(
        //           height: 5,
        //           width: 15,
        //           decoration: BoxDecoration(
        //             color: themeColor,
        //           ),
        //         ),
        //       )
        //     : const SizedBox(
        //         height: 5,
        //         width: 15,
        //       ),
      ],
    );
  }
}
