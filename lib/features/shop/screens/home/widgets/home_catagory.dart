import 'package:ecommerce/common/widgets/widgets_login_signup/vertical_images_screen.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


class HomeCatagoryScreen extends StatelessWidget {
  const HomeCatagoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:69, // Increased height to fit icon + text
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return VerticalImageScreen(image: TImages.cat1, title: 'Shose',onTap: (){},);
        },
      ),
    );
  }
}