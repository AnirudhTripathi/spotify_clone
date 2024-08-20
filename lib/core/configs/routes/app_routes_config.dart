import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/core/configs/routes/app_routes_transition.dart';
import 'package:spotify_clone/presentation/auth/screen/authInro/auth_intro.dart';
import 'package:spotify_clone/presentation/auth/screen/signIn/sign_in_screen.dart';
import 'package:spotify_clone/presentation/onboarding/screen/get_started_screen.dart';
import 'package:spotify_clone/presentation/select_theme/screen/theme_selection_screen.dart';
import 'package:spotify_clone/presentation/splash/screen/splash_screen.dart';

class AppRouter {
  static const String splashScreen = '/';
  static const String getStartedScreen = '/get-started';
  static const String selectThemeScreen = '/select-theme';
  static const String authIntroScreen = '/auth-intro-in';
  static const String signInScreen = '/sign-in';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashScreen,
        pageBuilder: (context, state) => AppRoutesTransition.screenTransition(
          context: context,
          state: state,
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: getStartedScreen,
        pageBuilder: (context, state) => AppRoutesTransition.screenTransition(
          context: context,
          state: state,
          child: GetStartedScreen(),
        ),
      ),
      GoRoute(
        name: selectThemeScreen,
        path: selectThemeScreen,
        pageBuilder: (context, state) => AppRoutesTransition.screenTransition(
          context: context,
          state: state,
          child: ThemeSelectionScreen(),
        ),
      ),
      GoRoute(
        name: authIntroScreen,
        path: authIntroScreen,
        pageBuilder: (context, state) => AppRoutesTransition.screenTransition(
          context: context,
          state: state,
          child: AuthIntro(),
        ),
      ),
      GoRoute(
        name: signInScreen,
        path: signInScreen,
        pageBuilder: (context, state) => AppRoutesTransition.screenTransition(
          context: context,
          state: state,
          child: SignInScreen(),
        ),
      ),
    ],
  );
}
