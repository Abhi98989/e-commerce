import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,  // No shadow beneath the AppBar
    centerTitle: false,  // Title is left-aligned
    scrolledUnderElevation: 0,  // No elevation when scrolled
    backgroundColor: Colors.transparent,  // Transparent background
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,  // Icon color set to black
      size: 24,  // Icon size
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,  // Actions icon color set to black
      size: 24,  // Actions icon size
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,  // Font size of the title text
      fontWeight: FontWeight.w600,  // Semi-bold font weight
      color: Colors.black,  // Title text color set to black
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,  // No shadow beneath the AppBar
    centerTitle: false,  // Title is left-aligned
    scrolledUnderElevation: 0,  // No elevation when scrolled
    backgroundColor: Colors.transparent,  // Transparent background
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.white,  // Icon color set to white for dark theme
      size: 24,  // Icon size
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,  // Actions icon color set to white for dark theme
      size: 24,  // Actions icon size
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,  // Font size of the title text
      fontWeight: FontWeight.w600,  // Semi-bold font weight
      color: Colors.white,  // Title text color set to white for dark theme
    ),
  );
}
