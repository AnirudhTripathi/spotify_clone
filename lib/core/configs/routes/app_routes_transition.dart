import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutesTransition {
  static Page screenTransition({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final fadeTransition = FadeTransition(
          opacity: animation,
          child: child,
        );

        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: fadeTransition,
        );
      },
    );
  }
}
