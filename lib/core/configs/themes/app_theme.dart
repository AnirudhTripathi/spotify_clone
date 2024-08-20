import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/common/text_styles.dart';
import 'package:spotify_clone/core/configs/themes/color_pallete.dart';

class AppTheme {
  //light themeData
  static final lightTheme = ThemeData(
    primaryColor: ColorPallete.primaryColor,
    scaffoldBackgroundColor: ColorPallete.lightBackground,
    brightness: Brightness.light,
    fontFamily: "Satoshi",
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: ColorPallete.lightHeadingTextColor),
      headlineSmall: TextStyle(color: ColorPallete.lightHeadingTextColor),
      bodyLarge: TextStyle(color: ColorPallete.lightBodyTextColor),
      titleLarge: TextStyle(color: ColorPallete.activeLightText)
    ),
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: ColorPallete.transparentColor,
        backgroundColor: ColorPallete.primaryColor,
        textStyle: TextStyles.buttonText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
    ),
  );

  //dark themeData
  static final darkTheme = ThemeData(
    primaryColor: ColorPallete.primaryColor,
    scaffoldBackgroundColor: ColorPallete.darkBackground,
    brightness: Brightness.dark,
    fontFamily: "Satoshi",
    useMaterial3: true,
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: ColorPallete.darkHeadingTextColor),
      headlineSmall: TextStyle(color: ColorPallete.darkHeadingTextColor),
      bodyLarge: TextStyle(color: ColorPallete.darkBodyTextColor),
      titleLarge: TextStyle(color: ColorPallete.activeDarkText)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: ColorPallete.transparentColor,
        backgroundColor: ColorPallete.primaryColor,
        textStyle: TextStyles.buttonText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
    ),
  );
}
