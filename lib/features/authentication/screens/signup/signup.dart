import 'package:ecommerce/common/widgets/widgets_login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/widgets_login_signup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override  Widget build(BuildContext context) {
    final darkTheme=TheHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding:
        EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Text(TTexts.signIn, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwSection,),
            //form
            SignupForm(dark: darkTheme),
            const SizedBox(height: TSizes.spaceBtwSection),
            FormDivider(dividerText: TTexts.orSignInWith.capitalize!),
            //social buttons
            const SizedBox(height: TSizes.spaceBtwItems),
            const SocialButtonScreen()
          ],
        ),),
        
      ),
    );
  }
}

