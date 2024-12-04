import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utilis.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =TheHelperFunctions.isDarkMode(context);
    return Positioned(
      right:TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(onPressed: ()=>OnboardingController.instance.nextPage(),
      style: ElevatedButton.styleFrom(shape:const CircleBorder(),backgroundColor:dark ? TColors.primary:Colors.black ),
       child: Icon(Iconsax.arrow_right_3)));
  }
}
