import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/Functions/user_details.dart';
import '../../../../../Core/Utils/styles.dart';

class HomeAppBarTitle extends StatelessWidget
{
  const HomeAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    String arabicUsername = getUser()!.arabicUsername;

    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text('مرحباً بك يا $arabicUsername', style: Styles.appBarStyle),
    );
  }
}