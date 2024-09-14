import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFFD05353), // Your main color
  fontFamily: 'Inter', // Your chosen font
  textTheme:  GoogleFonts.interTextTheme(
    const TextTheme(
        displayLarge: TextStyle(fontSize: 32,fontWeight: FontWeight.w300),
        bodyLarge: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),
        bodyMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
        headlineLarge: TextStyle(fontSize: 32,fontWeight: FontWeight.w300),
        headlineMedium: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),
        headlineSmall: TextStyle(fontSize: 18,fontWeight: FontWeight.normal)
    )
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffD05353)),
  useMaterial3: true,
);