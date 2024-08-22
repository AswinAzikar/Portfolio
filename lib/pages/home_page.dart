import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xff000319),
      body: Center(
        child: Stack(children: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: const GlassWidget(),
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [],
                    ),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
