import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
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
                      fontWeight: FontWeight.w100,
                      color: themeColor,
                      fontSize: 18,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
