import 'package:flutter/material.dart';
import 'login_view_form.dart';

class LoginViewBodyItems extends StatelessWidget
{
  const LoginViewBodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Center(
      child: LoginViewForm(),
    );
  }
}