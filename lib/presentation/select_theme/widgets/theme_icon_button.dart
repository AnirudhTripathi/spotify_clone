import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/text_styles.dart';
import 'package:spotify_clone/core/configs/themes/color_pallete.dart';

class ThemeIconButton extends StatefulWidget {
  final VoidCallback onTap;
  final String logo;
  final String label;

  const ThemeIconButton({
    Key? key,
    required this.onTap,
    required this.logo,
    required this.label,
  }) : super(key: key);

  @override
  State<ThemeIconButton> createState() => _ThemeIconButtonState();
}

class _ThemeIconButtonState extends State<ThemeIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _glowAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reset();
        }
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            widget.onTap();
            _animationController.forward();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Glow effect container
              AnimatedBuilder(
                animation: _glowAnimation,
                builder: (context, child) => Container(
                  height: 90
                      .w, // Increased size to make the glow effect visible behind the button
                  width: 90.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: ColorPallete.primaryColor
                            .withOpacity(_glowAnimation.value * 0.2),
                        blurRadius: 25 * _glowAnimation.value,
                        spreadRadius: 30 * _glowAnimation.value,
                      ),
                    ],
                  ),
                ),
              ),
              // Main button with ClipOval
              ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 70.w,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500.withOpacity(.2),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SvgPicture.asset(
                        widget.logo,

                        //  ColorPallete.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Text(
            widget.label,
            style: TextStyles.bodyText1.copyWith(
              color: ColorPallete.lightText,
            ),
          ),
        ),
      ],
    );
  }
}
