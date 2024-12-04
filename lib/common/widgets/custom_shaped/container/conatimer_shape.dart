
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key, this.child,  this.width=300, this.height=300, this.radius=300, this.padding=0, this.backgroundColor=TColors.white, this.margin, required int diameter,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: width,
    height: height,
    margin: margin,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: TColors.textPrimary.withOpacity(0.1)
    ),
  );
  }
}