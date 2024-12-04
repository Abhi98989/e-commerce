import 'package:ecommerce/features/authentication/screens/password_config/reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text(
                TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems *2,),
            //text field
            TextField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                border: OutlineInputBorder(),
                prefixIcon:const Icon(Iconsax.direct_right)
              ),
            ),
            
            const SizedBox(height: TSizes.spaceBtwItems,),
            //submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=>Get.to(()=>const ResetPass()), child: Text(TTexts.submit)),
            )

          ],
        ),),
      ),
    );
  }
}