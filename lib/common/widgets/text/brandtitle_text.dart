import 'package:ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleTextScreen extends StatelessWidget {
  const BrandTitleTextScreen({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSize.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSize.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSize.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : Theme.of(context).textTheme.titleLarge!.apply(color: color),
    );
  }
}
