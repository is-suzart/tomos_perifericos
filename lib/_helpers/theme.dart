import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xffD05353);
const Color backgroundColor = Color(0xffFAFAFA);
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
    cardTheme: const CardTheme(
      color: Colors.white,
      shadowColor: Color(0x26000000)
    ),
    navigationDrawerTheme: const NavigationDrawerThemeData(
      backgroundColor: Colors.white,
      indicatorColor: backgroundColor,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor ,
      surface: backgroundColor ,
      ),
      
    useMaterial3: true
);
