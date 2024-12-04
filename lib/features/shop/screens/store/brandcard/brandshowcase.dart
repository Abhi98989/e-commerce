import 'package:ecommerce/common/widgets/custom_shaped/container/rounded_container.dart';
import 'package:ecommerce/features/shop/screens/store/brandcard/brandcard.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class BrandShowCaseScreen extends StatelessWidget {
  const BrandShowCaseScreen({
    super.key, required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainerScreen(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brands with products Count
          BrandCardScreen(
            showBorder: false,
          ),
          SizedBox(height: TSizes.sm,),
           //top brand products
            Row(
              children:images.map((image)=>brandTopProductImage(image, context)).toList()),
          
        ],
      ),
    );
  }
} 

Widget brandTopProductImage(String image, context){
  return Expanded(
    child: RoundedContainerScreen(
      height: 80,
      backgroundColor: TheHelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.only(bottom: TSizes.md),
      child: Image(image: AssetImage(image)),
    ),
  );
}