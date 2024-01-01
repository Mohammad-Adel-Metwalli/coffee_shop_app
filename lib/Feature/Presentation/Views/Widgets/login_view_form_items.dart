import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/coffee_animation.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/email_text_form_field.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/password_text_form_field.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/register_section.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/third_party_apps.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Models/user_model.dart';
import 'another_way_to_login.dart';
import 'login_button.dart';

class LoginViewFormItems extends StatefulWidget
{
  const LoginViewFormItems({
    super.key, required this.controller,
  });
  final PageController controller;

  @override
  State<LoginViewFormItems> createState() => _LoginViewFormItemsState();
}

class _LoginViewFormItemsState extends State<LoginViewFormItems>
{
  GlobalKey<FormState> formKey = GlobalKey();
  UserModel userModel = UserModel('', '', '');

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

            CoffeeAnimation(
              height: MediaQuery.sizeOf(context).height * 0.125,
              width: MediaQuery.sizeOf(context).height * 0.125,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            const Center(child: Text('أهلاً  و  سهلاً  بِكُم  في  قَهوَ تِنَا', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: babyPowder))),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            EmailTextFormField(onFieldSubmitted: (data) => userModel.email = data, onChanged: (data) => userModel.email = data),

            PasswordTextFormField(onFieldSubmitted: (data) => userModel.password = data, onChanged: (data) => userModel.password = data),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

            LoginButton(formKey: formKey, userModel: userModel),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),

            GestureDetector(
              onTap: () => widget.controller.animateToPage(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut),
              child: const RegisterSection(),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const AnotherWayToLogin(text: 'أو سجل عن طريق'),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const ThirdPartyApps(),
          ],
        ),
      ),
    );
  }
}