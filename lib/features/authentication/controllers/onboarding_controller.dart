import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class OnboardingController extends GetxController {

  static OnboardingController get instance =>Get.find();


  //veriables
  final pageController = PageController();
  var currentPageIndex =0.obs;

  //update current index when page scroll

  void updatePageIndicator(index)=> currentPageIndex.value = index;
    //pageController.jumpToPage(index);
  

  //Jump to the specific dot selected page

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Update Current Index & jump to the next page
  void nextPage() {
    if(currentPageIndex.value==2){
      Get.to(const LoginScreen());

    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }

  }

  //Update Current Index & jump to the previous page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    Get.to(const LoginScreen());
    }
  }

