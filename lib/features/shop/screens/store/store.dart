import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shaped/container/search_container.dart';
import 'package:ecommerce/common/widgets/layout/gridle_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/screens/store/brandcard/brandcard.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/catagory_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(backgroundColor: Colors.grey,
        appBar: AppbarScreen(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcons(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                backgroundColor: dark ? TColors.red: TColors.white,
                expandedHeight: 355,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: EdgeInsets.all(TSizes.sm),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //const SizedBox(height: TSizes.spaceBtwItems),
                        SearchContainer(
                          text: 'Search',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(height: TSizes.spaceBtwSection),
                        SectionHeadScreen(
                          text: 'Feature Brands',
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                        // Featured Brands Grid
                        GridleLayoutScreen(
                          itemCount: 4,
                          mainAxisExtent: 75, // Increased height for proper fit
                          itemBuilder: (_, index) {
                            return BrandCardScreen(showBorder: true);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: const TabBarScreen(tabs: [
                Text('Sports'),
                Text('Electronics'),
                Text('Clothes'),
                Text('Cosmatics'),
                Text('Furniture'),
                ]),
              ),
            ];
          },
          // Body for the TabBar views
          body: TabBarView(children: [
            CatagoryTabScreen(),
            CatagoryTabScreen(),
            CatagoryTabScreen(),
            CatagoryTabScreen(),
            CatagoryTabScreen()
          ])
        ),
      ),
    );
  }
}
