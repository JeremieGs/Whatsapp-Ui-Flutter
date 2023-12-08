import 'package:flutter/material.dart';
ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      background: Color(0xFF131C23),
      secondary: Color(0xff859499),
      primary: Colors.white,
      surface: Color(0xff2d7ee9),
      tertiary: Color(0xff00a783),
      onSurface: Color(0xff202930),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff00a783),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor:Color(0xff1f2c34),
        foregroundColor: Color(0xff00a783) ,
        shadowColor: null
    )
);
