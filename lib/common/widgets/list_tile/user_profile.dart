import 'package:ecommerce/common/widgets/custom_shaped/image_text_widgets/circular_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: CircularImageScreen(
     image: TImages.profilePic,
     width: 40,
     height: 40,
     padding: 0,),
     title: Text('Abhishek Chaudhary',style:Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
     subtitle: Text('abhishek@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
     trailing: IconButton(icon: Icon(Iconsax.edit), color: Colors.white, onPressed: onPressed),
     
    );
  }
}