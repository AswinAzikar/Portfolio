import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ).copyWith(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontFamily: 'Ubuntu'),
            bodyMedium: TextStyle(
              fontFamily: 'Ubuntu',
            ),
            displayLarge:
                TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
          ),
        ),
        title: 'Aswin Manmathan S',
        home: const HomePage());
  }
}
