import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowStyle {

  static final verticalProductShadow= BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7.0,
    blurRadius: 50.0,
    offset: Offset(0, 2.0)
  );

  static final horizontalProductShadow= BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7.0,
    blurRadius: 50.0,
    offset: Offset(0, 2.0)
  );
}