import 'package:coffee_shop_app/Core/Utils/Functions/google_sign_in_function.dart';
import 'package:hive/hive.dart';
import '../../../../Core/Utils/Functions/github_sign_in_function.dart';
import 'package:coffee_shop_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Utils/constants.dart';

class ThirdPartyApp extends StatelessWidget
{
  const ThirdPartyApp({
    super.key, required this.thirdPartyIcon, required this.iconName,
  });
  final Widget thirdPartyIcon;
  final String iconName;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).height * 0.08,
      child: MaterialButton(
        onPressed: () async
        {
          if(iconName == 'Google')
          {
            signInWithGoogle(context);
            var visitBox = Hive.box(kVisitBox);
            visitBox.add({'visit': true});
          }

          else
          {
            await signInWithGitHub(context);
            var visitBox = Hive.box(kVisitBox);
            visitBox.add({'visit': true});
          }
        },
        color: babyPowder,
        splashColor: brown.withOpacity(0.15),
        shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(50)), side: BorderSide(color: customedGrey.withOpacity(0.3), width: 3.5)),
        child: Center(child: thirdPartyIcon),
      ),
    );
  }
}