import 'package:coffee_shop_app/Core/Errors/hive_error_handling.dart';
import 'package:coffee_shop_app/Feature/Splash/Presentation/Views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../Feature/Presentation/Views/login_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HiveErrorHandling.invalidIndexHandling() ? const LoginView() : const SplashView()
        ),

        GoRoute(
          path: '/splashView',
          pageBuilder: (context, state)
          {
            return CustomTransitionPage(
              child: const SplashView(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
            );
          },
        ),
      ]
  );
}