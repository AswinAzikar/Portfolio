import 'dart:ui';

import 'package:flutter/material.dart';

var glassFilterSettings = BackdropFilter(
  filter: ImageFilter.blur(
    sigmaX: 1.0,
    sigmaY: 1.0,
  ),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);

var decorationsGivenToTheContainer = BoxDecoration(
  // color: const Color.fromARGB(255, 170, 167, 167).withOpacity(0.2),
  borderRadius: BorderRadius.circular(20),
);

Color themeColor = Colors.white;
SizedBox gapHeight = const SizedBox(height: 8);
SizedBox gapWidth = const SizedBox(width: 8);
