import 'package:ecommerce/common/widgets/custom_shaped/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shaped/image_text_widgets/circular_image.dart';
import 'package:ecommerce/common/widgets/text/brandtitlewithverifiedicon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BrandCardScreen extends StatelessWidget {
  const BrandCardScreen({super.key, this.showBorder});
  final bool? showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = TheHelperFunctions.isDarkMode(context);
    return GestureDetector(
                  onTap: (){},
                   child: RoundedContainerScreen(
                    padding: const EdgeInsets.all(TSizes.sm),
                    showBorder:true,
                    backgroundColor: Colors.transparent,
                    borderColor:dark ? TColors.white : TColors.black,
                    child: Row(
                      children: [
                        //icons
                        Flexible(
                        child: CircularImageScreen(
                          image: TImages.productIcon1,
                          isNetworkImage: false,
                          backgroundColor: dark ? TColors.black : TColors.white, // Adjust colors based on theme
                          overlayColor: dark ? TColors.white : TColors.black,   // Overlay for image
                        ),
                      ),
                        const SizedBox(height: TSizes.spaceBtwItems / 2,),

                        //text
                       Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BrandTitleWithVerifiedIconScreen(
                                title: 'Nike',
                                textColor: Theme.of(context).textTheme.labelLarge?.color, // Ensure color is correct
                                brandTextSizes: TextSize.large, // Adjust the text size
                              ),
                              Text(
                                '150 Products',
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ],
                    ),
                    //texts
                   ),
                 );
  }
}