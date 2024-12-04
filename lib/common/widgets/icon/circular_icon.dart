import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CirciularIconScreen extends StatelessWidget {
  //custom circular icons widget with a background color
  //properties are: container [width] [height],[backgroundcolor],
  //icon [icon], [size], [color], [onPressed]

  const CirciularIconScreen({
    super.key,
    this.width=40,
    this.height=40,
    this.size,
    required this.icon,
    this.color,
    this.backgroundcolor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundcolor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundcolor !=null ?
        backgroundcolor ! :
        dark
            ? TColors.white.withOpacity(0.9)
            : TColors.black.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
