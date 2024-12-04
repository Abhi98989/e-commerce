
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/ratingandshare.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
// import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark =TheHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slider
            ProductImageSliderScreen(),
            //products Details
            Padding(padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                //Rating and share buttom
                RatingandShareScreen(),
                //Price title, Stock, and Brand
                ProductMetaDataScreen(),

                // Attribute description

                //Checkout button description

                //Description

                //Review button
              ],
            ),)

          ],
        ),
      ),
    );
  }
}
