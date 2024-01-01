import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/styles.dart';

class LoginSection extends StatelessWidget
{
  const LoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('لديك حساب بالفعل؟ سجل حسابك', style: Styles.createAccountStyle),

        const Icon(EvaIcons.chevron_right, color: babyPowder, size: 30),
      ],
    );
  }
}