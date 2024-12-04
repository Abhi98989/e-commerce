import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/common/widgets/widgets_login_signup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/widgets_login_signup/form_divider.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_header.dart';  


class LoginScreen extends StatelessWidget {  
  const LoginScreen({super.key});  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: SingleChildScrollView(  
        child: Padding(  
          padding: TSpacingStyle.paddingwithAppBarHeight,  
          child: Column(  
            children: [  
              // Logo, Title & Sub-Title  
              const LoginHeader(),  
              // Form  
              const LoginFormScreen(),  
              // Divider  
              FormDivider(  
                  dividerText: TTexts.orSignInWith.capitalize!),  
              const SizedBox(height: TSizes.spaceBtwSection),  
              // Footer  
              const SocialButtonScreen(),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}
