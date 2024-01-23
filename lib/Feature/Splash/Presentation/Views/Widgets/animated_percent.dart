import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constants.dart';

class AnimatedPercent extends StatelessWidget
{
  const AnimatedPercent({
    super.key,
    required this.percentText,
  });

  final double percentText;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 50.h,
      child: Center(
        child: AnimatedDigitWidget(
          value: percentText.ceil() == 31 ? 30 : percentText.ceil(),
          textStyle: TextStyle(fontFamily: marsmonsterFont, fontSize: 30.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}