import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shaped/round_images_screen/round_image.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromohomeSliderScreen extends StatelessWidget {
  const PromohomeSliderScreen({super.key, required this.banner});
  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    // Ensure the HomeController is correctly instantiated
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.5, // Each image will take full width
            autoPlay: true,        // Enable auto-play
            autoPlayInterval: const Duration(seconds: 3), // Set interval to 3 seconds
            onPageChanged: (index, reason) {
              // Update the index in the controller whenever the page changes
              controller.updatePageIndicator(index);
            },
          ),
          items: banner.map((url) => RoundImageScreen(imageUrl: url)).toList(),
        ),
        const SizedBox(height: 10),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the dots
            children: List.generate(banner.length, (i) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300), // Smooth transition
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: controller.carousalCurrentIndex.value == i ? 15 : 15,
                width: controller.carousalCurrentIndex.value == i ? 15: 15,
                decoration: BoxDecoration(
                  color: controller.carousalCurrentIndex.value == i
                      ? TColors.red // Active dot color
                      : TColors.grey,   // Inactive dot color
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
