import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/core/configs/themes/color_pallete.dart';

class TextStyles {
  //dynamic text and color for different theme
  static TextStyle headlineMedium(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
          );

  static TextStyle headlineSmall(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          );

  static TextStyle bodyLarge(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 17.sp,
            fontWeight: FontWeight.normal,
          );

  static TextStyle titleLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          );

  //static color for onboarding
  static TextStyle headline1 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
    color: ColorPallete.lightText,
  );

  static TextStyle bodyText1 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.normal,
    color: ColorPallete.lightBodyTextColor,
  );

  static TextStyle bodyText2 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: ColorPallete.buttonTextColor,
  );

  static TextStyle caption = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
}
