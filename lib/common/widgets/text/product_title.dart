import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductTitleTextScreen extends StatelessWidget {
  const ProductTitleTextScreen({
    super.key,
    required this.title,
    this.smallSizes = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSizes;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    // Check if the app is in dark mode
    final dark = TheHelperFunctions.isDarkMode(context);

    // Define text color based on theme
    //final Color textColor = isDarkMode ? Colors.white : Colors.black;

    return Text(
      title,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color:dark ? TColors.black:TColors.white , // Explicitly set color based on theme
          ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
