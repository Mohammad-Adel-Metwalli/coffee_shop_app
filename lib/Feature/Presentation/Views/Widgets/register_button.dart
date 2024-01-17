import 'package:coffee_shop_app/Core/Utils/Functions/sign_up_function.dart';
import 'package:coffee_shop_app/Core/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/styles.dart';
import '../../../Data/Models/user_model.dart';

class RegisterButton extends StatelessWidget
{
  const RegisterButton({super.key, required this.formKey, required this.userModel});
  final GlobalKey<FormState> formKey;
  final UserModel userModel;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.065,
      width: MediaQuery.sizeOf(context).width * 0.4,
      child: MaterialButton(
        onPressed: () async
        {
          if(formKey.currentState!.validate())
          {
            signUpFunction(userModel, context);
            var visitBox = Hive.box(kVisitBox);
            visitBox.add({'visit': true});
          }
        },
        color: brown,
        splashColor: babyPowder.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.5), side: const BorderSide(color: babyPowder, width: 3.5)),
        child: Text('أَنْشِئ الآن', style: Styles.loginButtonStyle),
      ),
    );
  }
}