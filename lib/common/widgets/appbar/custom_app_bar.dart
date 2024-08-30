import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/core/configs/themes/color_pallete.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? showLogo;

  const CustomAppBar({
    Key? key,
    this.showLogo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.h),
        child: Stack(),
      ),
    );
    //   AppBar(
    //     backgroundColor: ColorPallete.transparentColor,
    //     elevation: 0,
    //     leading: IconButton(
    //       onPressed: () {
    //         context.pop();
    //       },
    //       icon: Container(
    //         height: 32.w,
    //         width: 32.w,
    //         decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: context.isDarkMode
    //               ? Colors.white.withOpacity(0.1)
    //               : Colors.black.withOpacity(0.1),
    //         ),
    //         child: Icon(
    //           Icons.arrow_back_ios_new_rounded,
    //           size: 15.w,
    //           color: context.isDarkMode ? Colors.white : Colors.black,
    //         ),
    //       ),
    //     ),
    //     actions: showLogo == true
    //         ? [
    //             const Spacer(),
    //             SvgPicture.asset(
    //               AppVector.logo,
    //               width: 108.w,
    //             ),
    //             const Spacer(),
    //           ]
    //         : [],
    //   );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 50.h);
}
