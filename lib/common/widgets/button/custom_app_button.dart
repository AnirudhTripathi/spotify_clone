import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/common/text_styles.dart';

class CustomAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  final Color? color;
  final bool? changeColor;

  CustomAppButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.height,
    this.color,
    this.changeColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 60.h),
        backgroundColor: color,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: changeColor == true
            ? TextStyles.titleLarge(
                context) // Change the color if changeColor is true
            : TextStyles.buttonText,
      ),
    );
  }
}
