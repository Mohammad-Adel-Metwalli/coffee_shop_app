import 'package:coffee_shop_app/Feature/Data/Models/user_model.dart';
import 'package:coffee_shop_app/Feature/Presentation/Views/Widgets/success_awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import '../../../Feature/Presentation/Views/Widgets/failure_awesome_dialog.dart';

Future<void> signInFunction(UserModel userModel, context) async
{
  try
  {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userModel.email,
      password: userModel.password,
    );

    successAwesomeDialog(context, 'أنرتنا').show();
    Future.delayed(const Duration(seconds: 4), () => GoRouter.of(context).replace('/splashView'));
  }

  on FirebaseAuthException catch (e)
  {
    if (e.code == 'user-not-found')
    {
      failureAwesomeDialog(context, 'هذا الحساب غير موجود').show();
    }

    else if (e.code == 'wrong-password')
    {
      failureAwesomeDialog(context, 'تحقق من كلمة السر أو اسم المستخدم').show();
    }

    else
    {
      failureAwesomeDialog(context, e.toString()).show();
    }
  }
}