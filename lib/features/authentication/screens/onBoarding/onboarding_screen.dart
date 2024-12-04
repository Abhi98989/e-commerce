import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/on_boarding_skips.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_nextbutton.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrolling page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const[
              OnBoardingPage(image: TImages.onBoarding1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,),

              OnBoardingPage(image: TImages.onBoarding2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,),

              OnBoardingPage(image: TImages.onBoarding3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,)

            ],
          ),

          //skip Button
         const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
         const OnBoardingDotNavigation(),
          //Circular button 
          OnBoardingNextButton()
        ],
      ),

    );
  }
}
