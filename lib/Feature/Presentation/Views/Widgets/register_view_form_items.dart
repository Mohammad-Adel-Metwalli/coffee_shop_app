import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/email_text_form_field.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/password_text_form_field.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/register_button.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/third_party_apps.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/username_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Models/user_model.dart';
import 'another_way_to_login.dart';
import 'coffee_animation.dart';
import 'login_section.dart';

class RegisterViewFormItems extends StatefulWidget
{
  const RegisterViewFormItems({super.key, required this.controller});
  final PageController controller;

  @override
  State<RegisterViewFormItems> createState() => _RegisterViewFormItemsState();
}

class _RegisterViewFormItemsState extends State<RegisterViewFormItems>
{
  GlobalKey<FormState> formKey = GlobalKey();
  UserModel userModel = UserModel('', '', '', '');

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

            CoffeeAnimation(
              height: MediaQuery.sizeOf(context).height * 0.1,
              width: MediaQuery.sizeOf(context).height * 0.1,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            const Center(child: Text('أهلاً  و  سهلاً  بِكُم  في  قَهوَ تِنَا', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: babyPowder))),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            UsernameTextFormField(onFieldSubmitted: (data) => userModel.username = data, onChanged: (data) => userModel.username = data),

            EmailTextFormField(onFieldSubmitted: (data) => userModel.email = data, onChanged: (data) => userModel.email = data),

            PasswordTextFormField(onFieldSubmitted: (data) => userModel.password = data, onChanged: (data) => userModel.password = data),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

            RegisterButton(formKey: formKey, userModel: userModel),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

            GestureDetector(
              onTap: () => widget.controller.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.easeInOut),
              child: const LoginSection(),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const AnotherWayToLogin(text: 'أو أنشئ عن طريق'),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const ThirdPartyApps(),
          ],
        ),
      ),
    );
  }
}