import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utilis.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget implements PreferredSizeWidget {
  const TabBarScreen({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(tabs: tabs,
      isScrollable: true,
      indicatorColor: TColors.red,
      labelColor: dark? TColors.white:TColors.primary,
      unselectedLabelColor: TColors.darkGrey,),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}