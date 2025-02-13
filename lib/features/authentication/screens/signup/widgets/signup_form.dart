import 'package:ecommerce/features/authentication/screens/signup/verify_mail.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_and_condition.dart';
//import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key, required bool dark,
  });

  @override
  Widget build(BuildContext context) {
    //  final dark=TheHelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.firstName,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.lastName,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user)
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        //username
        TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.username,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: TTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
        //Password
        //Email
          TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.email,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct)
                ),
              ),
        //Phone 
        const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.phoneNo,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: TTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields,),
        //Password
          TextFormField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  hintText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
                ),
              ),
    
              //terms and conditions checkbox
              const SizedBox(height: TSizes.spaceBtwSection),
              Termsandcondition(),
              //Signup button
              const SizedBox(height: TSizes.spaceBtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child:const Text(TTexts.createAccount)),
              )
      ],
    ));
  }
}

