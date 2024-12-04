import 'package:flutter/material.dart';  

/// Custom Class for Light & Dark Text Themes  
class TTextFormFieldTheme {  
  TTextFormFieldTheme._(); // To avoid creating instances  

  /// Customizable Light Text Theme  
  static InputDecorationTheme lightInputDecorationTheme =  
      InputDecorationTheme(  
    errorMaxLines: 3,  
    prefixIconColor: Colors.grey,  
    suffixIconColor: Colors.grey,  
    // constraints: const BoxConstraints.expand(height: 14.0),  
    labelStyle: const TextStyle(fontSize: 14, color: Colors.black),  
    hintStyle: const TextStyle(fontSize: 14, color: Colors.black),  
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),  
    floatingLabelStyle:  
        const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),  
    border: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.grey),  
    ),  
    enabledBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.grey),  
    ),  
    focusedBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.black12),  
    ),  
    errorBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.red),  
    ),  
    focusedErrorBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 2, color: Colors.orange),  
    ),  
  ); // InputDecorationTheme  

  /// Customizable Dark Text Theme  
  static InputDecorationTheme darkInputDecorationTheme =  
      InputDecorationTheme(  
    errorMaxLines: 3,  
    prefixIconColor: Colors.white,  
    suffixIconColor: Colors.white,  
    // constraints: const BoxConstraints.expand(height: 14.0),  
    labelStyle: const TextStyle(fontSize: 14, color: Colors.white),  
    hintStyle: const TextStyle(fontSize: 14, color: Colors.white),  
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),  
    floatingLabelStyle:  
        const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.grey),  
    ),  
    enabledBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.grey),  
    ),  
    focusedBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.white),  
    ),  
    errorBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 1, color: Colors.red),  
    ),  
    focusedErrorBorder: OutlineInputBorder(  
      borderRadius: BorderRadius.circular(14),  
      borderSide: const BorderSide(width: 2, color: Colors.orange),  
    ),  
  ); // InputDecorationTheme  
}