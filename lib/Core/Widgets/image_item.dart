import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ImageItem extends StatelessWidget
{
  const ImageItem({
    super.key, required this.path,
  });
  final String path;

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(
      path,
      height: 50.h,
      width: 50.w,
    );
  }
}