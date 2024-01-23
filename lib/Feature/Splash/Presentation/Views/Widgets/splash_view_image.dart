import 'package:avs_image/avs_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewImage extends StatelessWidget
{
  const SplashViewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return AVSImage(
      'Assets/Images/coffee logo.png',
      isCircle: true,
      height: 220.h,
      width: 220.h,
    );
  }
}