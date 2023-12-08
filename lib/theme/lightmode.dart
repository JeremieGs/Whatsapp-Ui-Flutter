import 'package:flutter/material.dart';
ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      background: Color(0xfffdfdfe),
      secondary: Color(0xff859499),
      primary: Colors.black,
      surface: Color(0xff2d7ee9),
      tertiary: Color(0xff00a783),
      onSurface: Color(0xfff2f2f2),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff00a783),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff00a783),
        foregroundColor: Colors.white,
        shadowColor: null
    )
);
