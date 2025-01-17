import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Termsandcondition extends StatelessWidget {
  const Termsandcondition({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: TSizes.spaceBtwItems,),
         Text.rich(TextSpan(
          children: [
            TextSpan(text: TTexts.agreeTo,style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: TTexts.privacyPolicy, style:Theme.of(context).textTheme.bodyMedium!.apply(
              color:dark ? TColors.primary : TColors.white,
              decoration:TextDecoration.underline,
              decorationColor: dark ? TColors.primary : TColors.white
        
            )),
            TextSpan(text: TTexts.and, style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: TTexts.termsOfUse, style:Theme.of(context).textTheme.bodyMedium!.apply(
              color:dark ? TColors.primary : TColors.white,
              decoration:TextDecoration.underline,
              decorationColor: dark ? TColors.primary : TColors.white
        
            )),
            ])
        )
      ],
    );
  }
}