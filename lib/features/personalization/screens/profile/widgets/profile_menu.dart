import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMenuScreen extends StatelessWidget {
  const ProfileMenuScreen({super.key, this.icon=Iconsax.arrow_right_34, required this.onPressed, required this.title, required this.value});
  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems/1.5),
      child:Row(
        children: [
          Expanded(flex:3,child: Text(title,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.clip,)), SizedBox(width: TSizes.defaultSpace),
          Expanded(flex:5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
          Expanded(child: Icon(icon, size: 18,color: TColors.black,))

        ]
      )),
    );
  }
}