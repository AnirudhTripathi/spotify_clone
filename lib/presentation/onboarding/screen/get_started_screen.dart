import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/common/text_styles.dart';
import 'package:spotify_clone/common/widgets/button/custom_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/core/configs/routes/app_routes_config.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  AppImages.introBg,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 46.w,
                vertical: 40.h,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.h,
                    ),
                    child: SvgPicture.asset(
                      AppVector.logo,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Enjoy listening to music",
                    style: TextStyles.headline2,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  Text(
                    "Discover new tracks, create endless playlists, and vibe to your favorite tunes. Your music journey starts here!",
                    style: TextStyles.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomAppButton(
                    onPressed: () {
                      context.pushNamed(AppRouter.selectThemeScreen);
                    },
                    title: "Get Started",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
