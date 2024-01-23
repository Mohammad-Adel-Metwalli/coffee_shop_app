import 'dart:async';
import 'package:coffee_shop_app/Feature/Splash/Presentation/Views/Widgets/splash_view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SplashViewIndicator extends StatefulWidget
{
  const SplashViewIndicator({super.key});

  @override
  State<SplashViewIndicator> createState() => _SplashViewIndicatorState();
}

class _SplashViewIndicatorState extends State<SplashViewIndicator>
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
        }
      });
    });
  }

  @override
  void dispose()
  {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: CircularPercentIndicator(
        center: const Center(child: SplashViewImage()),
        animationDuration: 500,
        animation: true,
        radius: 120.h,
        lineWidth: 15,
        percent: percent,
        animateFromLastPercent: true,
        backgroundColor: babyPowder,
        progressColor: brown,
        circularStrokeCap: CircularStrokeCap.round,
        ),
    );
  }
}