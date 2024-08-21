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
            child: Text(
              widget.title,
              style: TextStyle(
                backgroundColor: Colors.transparent,
                fontFamily: FontFamily.ubuntu,
                fontStyle: FontStyle.normal,
                color: _isHovered
                    ? themeColor
                    : const Color.fromARGB(255, 198, 161, 228),
                fontWeight: _isHovered ? FontWeight.w500 : FontWeight.w100,
                fontSize: _isHovered ? 22 : 18,
              ),
            ),
          ),
        ),
        _isHovered
            ? Transform(
                transform: Matrix4.skewX(-0.3),
                alignment: Alignment.center,
                child: Container(
                  height: 5,
                  width: 15,
                  decoration: BoxDecoration(
                    color: themeColor,
                  ),
                ),
              )
            : const SizedBox(
                height: 5,
                width: 15,
              ),
      ],
    );
  }
}
