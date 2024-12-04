
import 'package:ecommerce/common/widgets/custom_shaped/container/primary_header_controller.dart';
import 'package:ecommerce/common/widgets/custom_shaped/container/search_container.dart';
import 'package:ecommerce/common/widgets/layout/gridle_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card/productcard_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_catagory.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_homse_slidder.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimeheaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const HomeappbarScreen(),
                  const SizedBox(height: TSizes.spacehight),
                  // Search bar
                  SearchContainer(
                    text: TTexts.search,
                  ),
                  const SizedBox(height: TSizes.spacehight),
                  // Category Section
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Heading
                        SectionHeadScreen(
                          text: 'Top Selling',
                          showActionButton: false,
                        ),
                        const SizedBox(height: TSizes.spacehight),
                        // Category List
                        HomeCatagoryScreen(),

                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9),
              child:Column(
                children: [
              
              //promo slider 
              const PromohomeSliderScreen(banner: [TImages.banner3, TImages.banner2, TImages.banner1],),
              const SizedBox(height: TSizes.spacehight),

              //Heading
              SectionHeadScreen(text: 'Popular Products', onPressed: (){}),
              // Product Section // ProductCaedVerticalScreen(),
              GridleLayoutScreen(itemCount: 6, itemBuilder: (_, index )=>ProductCaedVerticalScreen() ),
              const SizedBox(height: TSizes.spacehight),
          ]
        ),
      ),
            
          ],
        ),
      ),
    );
  }
}
