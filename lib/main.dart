import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/homeScreen.dart';
import 'package:real_estate_app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme, // Use your light theme here
      darkTheme: darkTheme,
      home: const HomeScreen(),
    );
  }
}
