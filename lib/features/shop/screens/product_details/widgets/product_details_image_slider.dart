import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shaped/curved_edges/curved_widgets.dart';
import 'package:ecommerce/common/widgets/custom_shaped/round_images_screen/round_image.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSliderScreen extends StatelessWidget {
  const ProductImageSliderScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    return CurvedEdgeWidgets(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // main large image slider
            SizedBox(
              height: 480,
              child: Padding(
                padding: EdgeInsets.all(TSizes.produtImageRadius*2),
                child: Center(child: Image(image: AssetImage(TImages.product18))),
              )),
              //image slider
              Positioned(
                right: 0,
                bottom: 30,
                left: TSizes.defaultSpace,
                child: SizedBox(
                  height: 60,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __)=> const SizedBox(width: TSizes.spaceBtwItems),
                    itemCount:6,
                    itemBuilder:(_, index)=>RoundImageScreen(
                      width: 60,
                      backgroundColor: dark? TColors.white: TColors.dark,
                      imageUrl: TImages.product18)
                  ),
                ),
              ),
    
              //Appbar Icons
              AppbarScreen(
                showBackArrow: true,
                actions: [
                  CirciularIconScreen(icon: Iconsax.heart5, color: TColors.red,)
                ],
              )
              
          ],
        ),
    
      ),
    );
  }
}