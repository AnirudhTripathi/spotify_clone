import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/common/text_styles.dart';
import 'package:spotify_clone/common/widgets/appbar/custom_app_bar.dart';
import 'package:spotify_clone/common/widgets/button/custom_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/core/configs/routes/app_routes_config.dart';
import 'package:spotify_clone/core/configs/themes/color_pallete.dart';

class AuthIntro extends StatelessWidget {
  const AuthIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      body: Stack(
        children: [
          CustomAppBar(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.sideBg,
              // color: const Color.fromARGB(255, 0, 0, 0).withOpacity(.5),
              // colorBlendMode: BlendMode.softLight,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVector.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVector.bottomPattern),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVector.logo),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Sign In to Your Soundtrack",
                    style: TextStyles.headlineSmall(context),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Discover new tracks, create playlists,\nand let the rhythm move you anytime, anywhere.",
                    style: TextStyles.bodyLarge(context),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomAppButton(
                          onPressed: () {},
                          title: "Register",
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        flex: 1,
                        child: CustomAppButton(
                          changeColor: true,
                          color: Colors.grey.withOpacity(.25),
                          onPressed: () {
                                context.pushNamed(AppRouter.signInScreen);
                          },
                          title: "Sign In",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
