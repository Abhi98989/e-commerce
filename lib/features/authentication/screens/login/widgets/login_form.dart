// Assuming you have a file for size constants
import 'package:ecommerce/features/authentication/screens/password_config/forget_pass.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../nav_screen/navigation_menu.dart';
import '../../signup/signup.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSection),
        child: Column(
          children: [
            // Email Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right), // Assuming Iconsax package for icons
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSection),

            // Password Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check), // Assuming password check icon
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash), // For password visibility toggle
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSection),

            // Remember Me & Forget Password Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me Checkbox
                Row(
                  children: [
                    Checkbox(
                      value: true, // Default value
                      onChanged: (value) {
                        // Handle checkbox logic here
                      },
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                // Forgot Password Button
                TextButton(
                  onPressed: ()=>Get.to(()=>const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(()=>const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // Create Account Option
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>Get.to(()=> const SignupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}