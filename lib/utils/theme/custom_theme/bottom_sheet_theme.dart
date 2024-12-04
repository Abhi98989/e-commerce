import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,  // Enables the drag handle at the top of the bottom sheet
    backgroundColor: Colors.white,  // White background for the light theme
    modalBackgroundColor: Colors.white,  // Modal background color for the light theme
    constraints: const BoxConstraints(minWidth: double.infinity),  // Minimum width constraint
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16) // Rounded corners with a radius of 16
    ),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,  // Enables the drag handle at the top of the bottom sheet
    backgroundColor: Colors.black,  // Black background for the dark theme
    modalBackgroundColor: Colors.black,  // Modal background color for the dark theme
    constraints: const BoxConstraints(minWidth: double.infinity),  // Minimum width constraint
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),  // Rounded corners with a radius of 16
    ),
  );
}
