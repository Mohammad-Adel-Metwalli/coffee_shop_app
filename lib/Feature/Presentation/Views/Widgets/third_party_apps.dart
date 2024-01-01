import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/third_party_app.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';

class ThirdPartyApps extends StatelessWidget
{
  const ThirdPartyApps({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ThirdPartyApp(thirdPartyIcon: Brand(Brands.google, size: 40)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        const ThirdPartyApp(thirdPartyIcon: Icon(Bootstrap.apple, size: 35, color: customedGrey)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        const ThirdPartyApp(thirdPartyIcon: Icon(Bootstrap.facebook, size: 40, color: luxuryBlue)),
      ],
    );
  }
}