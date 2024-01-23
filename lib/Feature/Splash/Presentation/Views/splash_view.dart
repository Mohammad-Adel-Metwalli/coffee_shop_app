import 'package:coffee_shop_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget
{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: babyBlue,
      body: SplashViewBody(),
    );
  }
}