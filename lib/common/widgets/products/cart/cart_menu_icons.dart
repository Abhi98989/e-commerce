
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcons extends StatelessWidget {
  const CartCounterIcons({
    super.key, this.iconColor,required this.onPressed,
  });
  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark=TheHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color:dark? TColors.black:TColors.white)),
        Positioned( 
        right:0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(color:dark? TColors.black:TColors.white,
          borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              "0", // Placeholder for number of items in the cart
              style: Theme.of(context).textTheme.labelLarge!.apply(color:TColors.white, fontSizeFactor: 1),),
          )
        ),
        )
      ],
    );
  }
}
