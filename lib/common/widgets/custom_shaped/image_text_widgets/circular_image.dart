import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CircularImageScreen extends StatelessWidget {
  const CircularImageScreen({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 40,
    this.height = 40,
    this.padding = 0, // Set padding to 0 for a better image fit
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    // Check if the app is in dark mode
    final dark = TheHelperFunctions.isDarkMode(context);
    
    // Determine the background color based on dark mode and the passed color
    final effectiveBackgroundColor = backgroundColor ?? (dark ? TColors.black : TColors.white);
    
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding), // Use padding if needed
      decoration: BoxDecoration(
        color: effectiveBackgroundColor, // Use the determined background color
        borderRadius: BorderRadius.circular(100), // Ensures the container is circular
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100), // Clip the image to a circular shape
        child: Image(
          fit: fit, // Ensure the image fits correctly
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor, // Apply an overlay if needed
        ),
      ),
    );
  }
}
