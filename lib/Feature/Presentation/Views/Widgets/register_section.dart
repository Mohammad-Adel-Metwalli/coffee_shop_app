import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/styles.dart';

class RegisterSection extends StatelessWidget
{
  const RegisterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(EvaIcons.chevron_left, color: babyPowder, size: 30),

        Text('ليس لديك حساب؟ أنشئ حسابك', style: Styles.createAccountStyle),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
      ],
    );
  }
}