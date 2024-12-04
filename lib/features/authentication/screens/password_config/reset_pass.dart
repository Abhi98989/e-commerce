import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(CupertinoIcons.clear), onPressed: () =>Get.back()),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //images
             Image(image: AssetImage(TImages.emailVerification3), width:TheHelperFunctions.screenWidth()*0.6,),
            const SizedBox(height: TSizes.spaceBtwSection,),

            //title and subtitle
            Text(TTexts.changePasswordTitle, style:Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.changePasswordSubTitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            //button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(TTexts.done),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){},
                child: Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}