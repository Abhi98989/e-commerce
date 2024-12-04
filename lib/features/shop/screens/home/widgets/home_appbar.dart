import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class HomeappbarScreen extends StatelessWidget {
  const HomeappbarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppbarScreen(                   
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelSmall!.apply(color: TColors.grey),
          ),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white,),
          ),
        ],
      ),
      actions: [
        CartCounterIcons(
          onPressed: () {
            
          },
          iconColor: TColors.white,
        )
      ],
    );
  }
}