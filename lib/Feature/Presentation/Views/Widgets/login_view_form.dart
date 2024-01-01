import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'login_view_form_body.dart';

class LoginViewForm extends StatelessWidget
{
  const LoginViewForm({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8.5, sigmaY: 8.5),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.8,
          width: MediaQuery.sizeOf(context).width * 0.8,
          decoration: BoxDecoration(
            color: babyPowder.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: brown, width: 3.5),
            gradient: const LinearGradient(
              colors: [Colors.white60, Colors.white10],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),

          child: const LoginViewFormBody(),
        ),
      ),
    );
  }
}