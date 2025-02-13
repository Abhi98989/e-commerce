import 'package:ecommerce/common/widgets/layout/gridle_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card/productcard_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/screens/store/brandcard/brandshowcase.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CatagoryTabScreen extends StatelessWidget {
  const CatagoryTabScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Brands
                  BrandShowCaseScreen(images: [TImages.product20, TImages.product21, TImages.product22],),
                  BrandShowCaseScreen(images: [TImages.product20, TImages.product21, TImages.product22],),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  //Products
                  SectionHeadScreen(text: 'You might like', showActionButton: true,onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  GridleLayoutScreen(itemCount: 4, itemBuilder: (_,index)=>const ProductCaedVerticalScreen()),
                  const SizedBox(height: TSizes.spaceBtwSection,)
                ],
              ),),
      ]
    );
  }
}