import 'package:ecommerce/common/widgets/widgets_login_signup/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed:() => Get.offAll(() =>const LoginScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //images
            Image(image: AssetImage(TImages.emailVerification1), width:TheHelperFunctions.screenWidth()*0.6,),
            const SizedBox(height: TSizes.spaceBtwSection,),
            // Image(image: AssetImage(TImages.emailVerification2)),
            // Image(image: AssetImage(TImages.emailVerification3))

            //title and subtitle
            Text(TTexts.emailVerificationTitle, style:Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text("example.your Email.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.emailVerificationSubTitle,style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
            //buttons
            const SizedBox(height: TSizes.spaceBtwSection,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>Get.to(()=>SuccessScreen(
                  image: TImages.emailVerification2,
                  title: TTexts.yourAccountCreatedTitle,
                  subtitle: TTexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(()=>LoginScreen(),)
                )),
                child:const Text(TTexts.cont),
              ), 
            ),
            
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(TTexts.resendEmail),
              ),
            )
          ],
        ),),
      ),
    );
  }
}