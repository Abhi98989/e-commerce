import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shaped/image_text_widgets/circular_image.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarScreen(
        title: Text('Setting'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // User profile image and name
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  CircularImageScreen(image: TImages.profilePic,width: 80,height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile image')),
                ],
              ),
            ),
            //Details
            // User profile details (e.g., email, phone number)
            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            const SectionHeadScreen(text: 'Profile Details', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            ProfileMenuScreen(onPressed:(){} , title: 'Name', value: 'Abhi Chaudhary'),
            ProfileMenuScreen(onPressed:(){} , title: 'Username', value: 'abhi11221@gmail.com'),

            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            //heading
            const SectionHeadScreen(text: 'Profile Details', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            //Details
            ProfileMenuScreen(onPressed:(){} , title: 'User ID', value: '11221'),
            ProfileMenuScreen(onPressed:(){} , title: 'Email', value: 'abhi11221@gmail.com'),
            ProfileMenuScreen(onPressed:(){} , title: 'Phone Number', value: '+91 9876543210'),
            ProfileMenuScreen(onPressed:(){} , title: 'Gender', value: 'Male'),
            ProfileMenuScreen(onPressed:(){} , title: 'Date of Birth', value: '1990-05-15'),
            ProfileMenuScreen(onPressed:(){} , title: 'Date of Registration', value: '2022-01-01'),
            ProfileMenuScreen(onPressed:(){} , title: 'Last Login', value: '2022-02-15 12:30:45'),
            ProfileMenuScreen(onPressed:(){} , title: 'Address', value: '123 Main St, Anytown, USA'),
            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            
            Center(
              child: SizedBox(
                height: 50,
                width: 200,
                child: TextButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: TextButton.styleFrom(
                    // Gradient background using decoration
                    backgroundColor: Colors.red, // Fallback color
                    padding: EdgeInsets.zero, // Remove default padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Rounded corners
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.deepOrange], // Gradient colors
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30), // Ensure gradient respects button shape
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Close Account',
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            ]
        ))
      ),
    );
  }
}