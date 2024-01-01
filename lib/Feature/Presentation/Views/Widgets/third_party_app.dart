import 'package:coffee_shop_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';

class ThirdPartyApp extends StatelessWidget
{
  const ThirdPartyApp({
    super.key, required this.thirdPartyIcon,
  });
  final Widget thirdPartyIcon;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).height * 0.08,
      child: MaterialButton(
        onPressed: () {},
        color: babyPowder,
        splashColor: brown.withOpacity(0.15),
        shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(50)), side: BorderSide(color: customedGrey.withOpacity(0.3), width: 3.5)),
        child: Center(child: thirdPartyIcon),
      ),
    );
  }
}