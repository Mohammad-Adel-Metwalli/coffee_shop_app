import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constants.dart';

class PercentSymbol extends StatelessWidget
{
  const PercentSymbol({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(top: 11.h),
      child: Text(' %', style: TextStyle(fontFamily: marsmonsterFont, fontSize: 30.sp, fontWeight: FontWeight.bold)),
    );
  }
}