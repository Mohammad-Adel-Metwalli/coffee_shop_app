import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/register_view_form_items.dart';
import 'package:flutter/material.dart';
import 'login_view_form_items.dart';

class LoginViewFormBody extends StatefulWidget
{
  const LoginViewFormBody({
    super.key,
  });

  @override
  State<LoginViewFormBody> createState() => _LoginViewFormBodyState();
}

class _LoginViewFormBodyState extends State<LoginViewFormBody>
{
  final controller = PageController(initialPage: 1);

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return PageView(
      controller: controller,
      children: [
        RegisterViewFormItems(controller: controller),

        LoginViewFormItems(controller: controller),
      ],
    );
  }
}