import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'login_view_background.dart';
import 'login_view_body_items.dart';

class LoginViewBody extends StatelessWidget
{
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const LoginViewBackground().animate().fadeIn(curve: Curves.easeInOut, duration: const Duration(seconds: 1)),

        const LoginViewBodyItems(),
      ],
    );
  }
}