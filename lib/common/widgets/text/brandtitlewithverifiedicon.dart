import 'package:ecommerce/common/widgets/text/brandtitle_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleWithVerifiedIconScreen extends StatelessWidget {
  const BrandTitleWithVerifiedIconScreen({
    super.key, required this.title, this.maxLines=1, this.textColor, this.iconColor=TColors.primary, this.textAlign=TextAlign.center, this.brandTextSizes=TextSize.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: BrandTitleTextScreen(title: title,
        color: textColor,maxLines: maxLines,
        textAlign: textAlign,
        brandTextSize:brandTextSizes,
        )),
        const SizedBox(height:TSizes.sm),
        const Icon(Iconsax.verify5,color: TColors.primary,size:TSizes.iconXs)
      ],
    );
  }
}
