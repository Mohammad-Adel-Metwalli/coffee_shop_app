import 'package:coffee_shop_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../../Core/Utils/Functions/sign_in_function.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';
import '../../../Data/Models/user_model.dart';

class LoginButton extends StatelessWidget
{
  const LoginButton({
    super.key, required this.formKey, required this.userModel,
  });
  final GlobalKey<FormState> formKey;
  final UserModel userModel;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width * 0.4,
      child: MaterialButton(
        onPressed: () async
        {
          if(formKey.currentState!.validate())
          {
            signInFunction(userModel, context);
            var visitBox = Hive.box(kVisitBox);
            visitBox.add({'visit': true});
          }
        },
        color: brown,
        splashColor: babyPowder.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: const BorderSide(color: babyPowder, width: 3.5)),
        child: Text('سَجِّلْ الآن', style: Styles.loginButtonStyle),
      ),
    );
  }
}