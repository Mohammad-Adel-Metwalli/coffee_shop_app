import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'home_app_bar_body.dart';

class HomeViewAppBar extends StatelessWidget
{
  const HomeViewAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context)
  {
    return SliverAppBar(
      toolbarHeight: 75.h,
      flexibleSpace: const HomeAppBarBody(),
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: (){},
        splashColor: babyPowder,
        icon: const Icon(FontAwesome.bars_staggered_solid, color: babyPowder, size: 25),
      ),
    );
  }
}