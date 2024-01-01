import 'package:coffee_shop_app/Feature/Data/Models/user_model.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/success_awesome_dialog.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/warning_awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> signUpFunction(UserModel userModel, context) async
{
  try
  {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: userModel.email,
      password: userModel.password,
    );

    successAwesomeDialog(context, 'أقمرت قهوتنا يا ${userModel.username}').show();
  }

  on FirebaseAuthException catch (e)
  {
    if (e.code == 'weak-password')
    {
      warningAwesomeDialog(context, 'كلمة مرورك ضعيفة\nنرجو منك تعديلها').show();
    }

    else if (e.code == 'email-already-in-use')
    {
      warningAwesomeDialog(context, 'هذا الحساب موجود').show();
    }
  }

  catch(e)
  {
    debugPrint('error --> : ${e.toString()}');
  }
}