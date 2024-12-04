
import 'package:ecommerce/features/personalization/screens/setting/setting.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/features/shop/screens/store/store.dart';
import 'package:ecommerce/features/shop/screens/store/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navcontroller = Get.put(NavController());
    final darkTheme =TheHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          backgroundColor: darkTheme ? TColors.black : TColors.white,
          indicatorColor: darkTheme ? TColors.red.withOpacity(1) : TColors.black.withOpacity(1),
          selectedIndex: navcontroller.selectedIndex.value,
          onDestinationSelected: (index) {
            navcontroller.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      // Wrapping body in Obx to make sure it updates reactively with the selected index.
      body: Obx(() => navcontroller.screens[navcontroller.selectedIndex.value]),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  // List of screens to display based on the selected index.
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingScreen(),
  ];
}
