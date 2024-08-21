import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/constants.dart';
import 'package:personal_portfolio/pages/glass_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Positioned.fill(
            child: Image.asset(
              "assets/pngs/bg1.png",
              fit: BoxFit.fill,
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: DottedBorder(
                  dashPattern: const [10, 5],
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  color: themeColor,
                  strokeWidth: 2,
                  padding: const EdgeInsets.all(10),
                  child: const GlassWidget(),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
