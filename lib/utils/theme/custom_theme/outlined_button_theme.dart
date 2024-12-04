import 'package:flutter/material.dart';  

/// Custom Class for Light & Dark Text Themes  
class TOutlinedButtonTheme {  
  TOutlinedButtonTheme._(); // To avoid creating instances  

  /// Customizable Light Text Theme  
  static OutlinedButtonThemeData lightOutlinedButtonTheme =  
      OutlinedButtonThemeData(  
    style: OutlinedButton.styleFrom(  
      elevation: 0,  
      foregroundColor: Colors.black,  
      side: const BorderSide(color: Colors.blue),  
      textStyle: const TextStyle(  
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),  
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),  
      shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(14)),  
    ),  
  ); // OutlinedButtonThemeData  

  /// Customizable Dark Text Theme  
  static OutlinedButtonThemeData darkOutlinedButtonTheme =  
      OutlinedButtonThemeData(  
    style: OutlinedButton.styleFrom(  
      foregroundColor: Colors.white,  
      side: const BorderSide(color: Colors.blueAccent),  
      textStyle: const TextStyle(  
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),  
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),  
      shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(14)),  
    ),  
  );

 // static var lightInputDecorationTheme;  
}