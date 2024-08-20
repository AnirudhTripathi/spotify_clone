import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/common/text_styles.dart';
import 'package:spotify_clone/common/widgets/button/custom_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/core/configs/routes/app_routes_config.dart';
import 'package:spotify_clone/presentation/select_theme/bloc/theme_cubit.dart';
import 'package:spotify_clone/presentation/select_theme/widgets/theme_icon_button.dart';

class ThemeSelectionScreen extends StatelessWidget {
  const ThemeSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  AppImages.selectThemeBg,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 46.w,
                vertical: 40.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    "Choose Mode",
                    style: TextStyles.headline2,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ThemeIconButton(
                        onTap: () => context
                            .read<ThemeCubit>()
                            .updateTheme(ThemeMode.dark),
                        logo: AppVector.darkLogo,
                        label: 'Dark Mode',
                      ),
                      SizedBox(
                        width: 70.w,
                      ),
                      ThemeIconButton(
                        onTap: () => context
                            .read<ThemeCubit>()
                            .updateTheme(ThemeMode.light),
                        logo: AppVector.lightLogo,
                        label: 'Light Mode',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  CustomAppButton(
                    onPressed: () {
                      context.pushNamed(AppRouter.authIntroScreen);
                    },
                    title: "Continue",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
