import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utilis.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = TheHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom:TDeviceUtils.getBottomNavigationBarHeight()+25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller:controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count:3,
      effect:ExpandingDotsEffect(activeDotColor:dark? TColors.light:TColors.dark, dotHeight: 6 ),
      ));
  }
}
