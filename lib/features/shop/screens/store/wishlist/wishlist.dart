import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icon/circular_icon.dart';
import 'package:ecommerce/common/widgets/layout/gridle_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card/productcard_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarScreen(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CirciularIconScreen(icon: Iconsax.add, onPressed: ()=>Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            GridleLayoutScreen(itemCount: 6, itemBuilder: (_,index)=>const ProductCaedVerticalScreen())
          ],
        ),),
      ),
    );
  }
}