import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF38B4BC),  // Teal
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF38B4BC),  // Teal
      secondary: const Color(0xFFF3A817),  // Orange
    ),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey.shade50,
    textTheme: TextTheme(
      headline6: TextStyle(fontSize: 20.0, fontFamily: 'Noto Sans'),
      bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Noto Sans'),
      button: TextStyle(fontSize: 14.0, fontFamily: 'Noto Sans'),
      caption: TextStyle(fontSize: 12.0, fontFamily: 'Noto Sans'),
    ),
    iconTheme: IconThemeData(color: Colors.black),
);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
   colorScheme: ColorScheme.light(
      primary: const Color(0xFF38B4BC),  // Teal
      secondary: const Color(0xFFF3A817),  // Orange
    ),
        backgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.grey.shade900,
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 20.0, fontFamily: 'Noto Sans', color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16.0, fontFamily: 'Noto Sans', color: Colors.white),
      button: TextStyle(fontSize: 14.0, fontFamily: 'Noto Sans', color: Colors.white),
      caption: TextStyle(fontSize: 12.0, fontFamily: 'Noto Sans', color: Colors.white70),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  );



