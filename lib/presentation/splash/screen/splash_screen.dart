import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/configs/assets/app_vector.dart';
import 'package:spotify_clone/core/configs/routes/app_routes_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Future.delayed(const Duration(seconds: 4), () async {
      // ignore: use_build_context_synchronously
      context.go(AppRouter.getStartedScreen);
    });
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVector.logo),
      ),
    );
  }
}
