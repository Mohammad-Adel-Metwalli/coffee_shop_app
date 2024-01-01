import 'package:flutter/material.dart';
import '../../../../Core/Utils/constant_colors.dart';

class CustomedDivider extends StatelessWidget
{
  const CustomedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 5,
      width: MediaQuery.sizeOf(context).width * 0.125,
      decoration: BoxDecoration(color: babyPowder, borderRadius: BorderRadius.circular(15)),
    );
  }
}