import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class VerticalImageScreen extends StatelessWidget {
  const VerticalImageScreen({
    super.key, required this.image, required this.title,this.textColor=TColors.white, this.backgroundColor=TColors.white, this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark =TheHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Padding(
          padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
          child: Column(
            children: [
              // Category Icon Container
              Container(
                width: 45,
                height: 45,
                padding: const EdgeInsets.all(TSizes.sm), // Adjust padding to be smaller
                decoration: BoxDecoration(
                  color: backgroundColor?? (dark? TColors.white : TColors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.contain, // Changed to BoxFit.contain
                    color: dark? TColors.dark :TColors.white,
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              // Category Text
              SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.apply(color: textColor),
                      maxLines: 1,overflow: TextOverflow.ellipsis, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
