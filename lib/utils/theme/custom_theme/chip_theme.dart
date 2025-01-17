import 'package:flutter/material.dart';  

/// Custom Class for Light & Dark Text Themes  
class TChipTheme {  
  TChipTheme._(); // To avoid creating instances  

  /// Customizable Light Text Theme  
  static ChipThemeData lightChipTheme = ChipThemeData(  
    disabledColor: Colors.grey.withOpacity(0.4),  
    labelStyle: const TextStyle(color: Colors.black),  
    selectedColor: Colors.blue,  
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),  
    checkmarkColor: Colors.white,  
  ); // ChipThemeData  

  /// Customizable Dark Text Theme  
  static ChipThemeData darkChipTheme = const ChipThemeData(  
    disabledColor: Colors.grey,  
    labelStyle: TextStyle(color: Colors.white),  
    selectedColor: Colors.blue,  
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),  
    checkmarkColor: Colors.white,  
  ); // ChipThemeData  
}