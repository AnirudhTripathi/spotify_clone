import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/core/configs/themes/color_pallete.dart';
import 'package:spotify_clone/presentation/auth/screen/authInro/auth_intro.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorPallete.transparentColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Container(
          height: 32.w,
          width: 32.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.isDarkMode
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
          ),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 15.w,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
