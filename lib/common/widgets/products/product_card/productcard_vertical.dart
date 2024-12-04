
import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/custom_shaped/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shaped/round_images_screen/round_image.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/common/widgets/text/brandtitlewithverifiedicon.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/common/widgets/text/product_title.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCaedVerticalScreen extends StatelessWidget {
  const ProductCaedVerticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () =>Get.to(()=>const ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.produtImageRadius),
          color: dark?TColors.white : TColors.black,
        ),
        child: Column(
          children: [
            //thumbline, wishlist button and discount tag
            RoundedContainerScreen(
              height: 170,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark?TColors.light : TColors.dark,
            child: Stack(
              children: [
                //thumbline image
                const RoundImageScreen(imageUrl: TImages.product18, applyImageRadius: true,),
                // sale tag
                Positioned(
                  top: 12,
                  child: RoundedContainerScreen(radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: EdgeInsets.symmetric(horizontal:TSizes.sm, vertical: TSizes.xs ),
                  child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color:TColors.black),),),
                ),
      
                //favorite icon button
                Positioned(
                  top: 0,
                  right: 0,
                  child: const CirciularIconScreen(icon:Iconsax.heart5, color: Colors.red,)
                  ),
              ],
            ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2),
      
                  //Detail of product
      
                  Padding(padding: EdgeInsets.all(TSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleTextScreen(title: 'Black Jacket',smallSizes: true,),
                      const SizedBox(height: TSizes.spaceBtwItems/2),
                      BrandTitleWithVerifiedIconScreen(title: 'Nike')
                     
                    ],
                  ),
                  ),
                  const Spacer(),
                   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //price
                          Padding(
                            padding: const EdgeInsets.only(left: TSizes.sm),
                            child:  ProductpricetextScreen(price:'22',),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:TColors.dark,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardRadiusMd),
                                bottomRight: Radius.circular(TSizes.produtImageRadius),
                              )
                            ),
                            child: const SizedBox(
                              width: TSizes.iconLg * 1.3,
                              height: TSizes.iconLg * 1.3,
                              child: Icon(Iconsax.add, color: TColors.white,),
                            ),
                          )
      
                        ],
                      )
          ],
        ),
      ),
    );
  }
}


