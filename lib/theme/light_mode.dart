import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.grey.shade50,
    inversePrimary: Colors.grey.shade900
  ),

  scaffoldBackgroundColor: Colors.grey.shade300,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade500,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)
    ),
);