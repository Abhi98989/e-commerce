import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shaped/container/primary_header_controller.dart';
import 'package:ecommerce/common/widgets/list_tile/setting_menu_style.dart';
import 'package:ecommerce/common/widgets/list_tile/user_profile.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimeheaderContainer(child: Column(
              children: [
                AppbarScreen(
                  title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                  //User Profile Card
                  UserProfileScreen(onPressed:() => Get.to(() => const ProfileScreen())),
                SizedBox(height: TSizes.spaceBtwItems,)
              ],
            )),
            //body
          Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Setting
                SectionHeadScreen(text: 'Account Settings', showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems,),

                SettingMenuStyleScreen(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address', onTap: (){},),
                SettingMenuStyleScreen(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: (){},),
                SettingMenuStyleScreen(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress aand completed orders', onTap: (){},),
                SettingMenuStyleScreen(icon: Iconsax.bank, title: 'Band Account', subTitle: 'Withdraw balance to registered bank accounts', onTap: (){},),
                SettingMenuStyleScreen(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons', onTap: (){},),
                SettingMenuStyleScreen(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message', onTap: (){},),
                SettingMenuStyleScreen(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', onTap: (){},),

                //Account Settings
                SizedBox(height: TSizes.spaceBtwSection),
                SectionHeadScreen(text: 'App Settings',showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwSection),
                SettingMenuStyleScreen(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase')
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

