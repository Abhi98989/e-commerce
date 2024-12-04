import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductpricetextScreen extends StatelessWidget {
  const ProductpricetextScreen({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    // Check if the app is in dark mode
    final dark = TheHelperFunctions.isDarkMode(context);

    // Define text color based on theme
    //final Color textColor = isDarkMode ? Colors.white : Colors.black;

    return Text(
      currencySign + price,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: dark? TColors.black:TColors.white, // Explicitly set color based on theme
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              )
          : Theme.of(context).textTheme.titleLarge!.copyWith(
                color: dark?TColors.black:TColors.white, // Explicitly set color based on theme
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              ),
    );
  }
}
