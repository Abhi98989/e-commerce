
import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});
  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child:Padding(padding: TSpacingStyle.paddingwithAppBarHeight*2,
      child: Column(
        children: [
        //image
        Image(image: AssetImage(image), width:TheHelperFunctions.screenWidth()*0.6,),
            const SizedBox(height: TSizes.spaceBtwSection,),

            //title and subtitle
            Text(title, style:Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(subtitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            //button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text(TTexts.cont),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            // SizedBox(
            //   width: double.infinity,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(TTexts.resendEmail),
            //   ),
            // )
      
      ]

      ) ,
      )

      ),
    );
  }
}