import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  
  // Function to hide the keyboard
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // Function to set the status bar color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  // Function to check if the device is in landscape orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  // Function to check if the device is in portrait orientation
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }
 
  // Function to enable or disable full screen mode
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  static double getScreenHight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight(){
    return kToolbarHeight;
  }

  static double getKeyboardHeight(){
    final viewInsets=MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> iskKeyboardVisible() async{
    final viewInsets=View.of(Get.context!).viewInsets;
    return viewInsets.bottom >0;
  }

  static Future<bool> isPhysicalDevice() async{
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration){
   HapticFeedback.vibrate();
   Future.delayed(duration, ()=>HapticFeedback.vibrate());
   }

   static Future<void> setPreferredOrentation(List<DeviceOrientation> orientation) async{
    await SystemChrome.setPreferredOrientations(orientation);

   }

   static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
   }

   static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
   }

   static Future<bool> hasInternetConnection() async{
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_){
      return false;
    }

   }

   static bool isIOS(){
    return Platform.isIOS;
   }

   static bool isAndroid(){
    return Platform.isAndroid;
   }

  static void lunchUrl(String url) async {
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else {
      throw 'could not lunch $url';
    }
  }


 }



