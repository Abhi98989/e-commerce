
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utilis.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,required this.text, this.icon=Iconsax.search_normal, this.showBackground=true, this.showBorder=true, this.onTap, this.padding=const EdgeInsets.symmetric(horizontal:TSizes.defaultSpace),
  });
    final String text;
    final IconData icon;
    final bool showBackground, showBorder;
    final VoidCallback? onTap;
    final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark =TheHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          height: 50,
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark? TColors.transparent:TColors.dark:TColors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiuslG),
            border:showBorder? Border.all(color:TColors.white):null
          ),
          child: Row(
            children: [
              const Icon(Iconsax.search_normal,color: Colors.white,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text(TTexts.search, style: TextStyle(color: TColors.white),)
            ],
          ),
          
        ),
      ),
    );
  }
}