import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
   brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: const Color(0xFF38B4BC),
    secondary: const Color(0xFFF3A817),
  ),
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.grey.shade50,
  textTheme: TextTheme(
    headline6: TextStyle(fontSize: 20.0, fontFamily: 'Noto Sans', color: Colors.black),
    headline5: TextStyle(fontSize: 18.0, fontFamily: 'Noto Sans', color: Colors.orange),
    bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Noto Sans'),
    button: TextStyle(fontSize: 14.0, fontFamily: 'Noto Sans'),
    caption: TextStyle(fontSize: 12.0, fontFamily: 'Noto Sans'),

  ),
  iconTheme: IconThemeData(color: Colors.black),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: const Color(0xFF38B4BC),  // Teal
    secondary: const Color(0xFFF3A817),  // Orange
  ),
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.grey.shade900,
  textTheme: TextTheme(
    headline6: TextStyle(fontSize: 20.0, fontFamily: 'Noto Sans', color: Colors.white),
    headline5: TextStyle(fontSize: 18.0, fontFamily: 'Noto Sans', color: Colors.orange),
    bodyText1: TextStyle(fontSize: 16.0, fontFamily: 'Noto Sans', color: Colors.white),
    button: TextStyle(fontSize: 14.0, fontFamily: 'Noto Sans', color: Colors.white),
    caption: TextStyle(fontSize: 12.0, fontFamily: 'Noto Sans', color: Colors.white70),
  ),
  iconTheme: IconThemeData(color: Colors.white),
);

// ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//    colorScheme: ColorScheme.light(
//       primary: const Color(0xFF38B4BC),  // Teal
//       secondary: const Color(0xFFF3A817),  // Orange
//     ),
//         backgroundColor: Colors.black,
//     scaffoldBackgroundColor: Colors.grey.shade900,
//     textTheme: TextTheme(
//       titleLarge: TextStyle(fontSize: 20.0, fontFamily: 'Noto Sans', color: Colors.white),
//       bodyMedium: TextStyle(fontSize: 16.0, fontFamily: 'Noto Sans', color: Colors.white),
//       button: TextStyle(fontSize: 14.0, fontFamily: 'Noto Sans', color: Colors.white),
//       caption: TextStyle(fontSize: 12.0, fontFamily: 'Noto Sans', color: Colors.white70),
//     ),
//     iconTheme: IconThemeData(color: Colors.white),
//   );



