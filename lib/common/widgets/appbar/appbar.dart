
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utilis.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppbarScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppbarScreen({
    super.key,
    this.title,
    this.showBackArrow =false,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,  // Set a default empty list for actions
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  final List<Widget>? actions;  // Added a default value for null safety

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return Padding( padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
    child:
    AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left, color: dark? TColors.dark:TColors.light,))
          : leadingIcon != null
              ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
              : null,
      title: title,
      actions: actions,
    )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
