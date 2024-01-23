import 'dart:async';
import 'package:coffee_shop_app/Feature/Splash/Presentation/Views/Widgets/splash_view_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'animated_percent_and_percent_symbol.dart';

class SplashViewBody extends StatefulWidget
{
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
{
  double percent = 0.0;
  Timer? timer;

  @override
  void initState()
  {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer)
    {
      setState(()
      {
        percent += 0.1;
        if(percent >= 1.0)
        {
          percent = 0.0;
          navigateToHomeView();
        }
      });
    });
  }

  void navigateToHomeView() => GoRouter.of(context).replace('/homeView');

  @override
  void dispose()
  {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    double percentText = percent * 100;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SplashViewIndicator(),

        AnimatedPercentAndPercentSymbol(percentText: percentText),
      ],
    );
  }
}