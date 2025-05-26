import 'package:flutter/material.dart';

class AppTheme{
  // static final ThemeData LightTheme = ThemeData();
  // static final ThemeData DarkTheme = ThemeData();
  // utils/themes.dart



  static final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.white,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
  backgroundColor: Colors.deepPurple,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  backgroundColor: Colors.deepPurple,
  selectedItemColor: Colors.amber,
  unselectedItemColor: Colors.white,
  ),
  );

  static final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.black,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
  backgroundColor: Colors.deepPurple,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  backgroundColor: Colors.deepPurple,
  selectedItemColor: Colors.amber,
  unselectedItemColor: Colors.white70,
  ),
  );
  }

