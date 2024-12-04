import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';  


class LoginHeader extends StatelessWidget {  
  const LoginHeader({  
    super.key,  
  });  

  @override  
  Widget build(BuildContext context) {  
    final dark = TheHelperFunctions.isDarkMode(context);  
    return Column(  
      crossAxisAlignment: CrossAxisAlignment.start,  
      children: [  
        Image(  
          height: 100,  
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),  
        ), // Image  
        Text(  
          TTexts.loginTitle,  
          style: Theme.of(context).textTheme.headlineMedium,  
        ),  
        const SizedBox(height: TSizes.space),  
        Text(  
          TTexts.loginSubTitle,  
          style: Theme.of(context).textTheme.bodyMedium,  
        ),  
      ],  
    );  
  }  
}