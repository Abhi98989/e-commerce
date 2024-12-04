import 'package:ecommerce/common/widgets/custom_shaped/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shaped/image_text_widgets/circular_image.dart';
import 'package:ecommerce/common/widgets/text/brandtitlewithverifiedicon.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/common/widgets/text/product_title.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaDataScreen extends StatelessWidget {
  const ProductMetaDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // price and sale price
        Row(
          children: [
            // Sales tag
            RoundedContainerScreen(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),

            // Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            const ProductpricetextScreen(price: '134', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Title
        const ProductTitleTextScreen(title: 'Black Winter Jacket'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const ProductTitleTextScreen(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand with verified icon
        Row(
          children: [
            CircularImageScreen(
              image: TImages.cat1,
              height: 25,
              width: 25,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Expanded(
              child: const BrandTitleWithVerifiedIconScreen(
                title: 'Nike',
                brandTextSizes: TextSize.medium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
