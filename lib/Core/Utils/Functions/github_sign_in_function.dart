import 'package:coffee_shop_app/Core/Utils/Functions/translate_to_arabic_function.dart';
import 'package:coffee_shop_app/Core/Utils/constants.dart';
import 'package:coffee_shop_app/Feature/Data/Models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import '../../../Feature/Presentation/Views/Widgets/success_awesome_dialog.dart';

Future<UserCredential> signInWithGitHub(context) async
{
  GithubAuthProvider githubAuthProvider = GithubAuthProvider();
  UserCredential userCredential = await FirebaseAuth.instance.signInWithProvider(githubAuthProvider);

  String nameInArabic = await translateToArabic(userCredential.user!.displayName.toString());
  UserModel userModel = UserModel(userCredential.user!.displayName.toString(), '', userCredential.user!.email.toString(), nameInArabic);
  var userBox = Hive.box<UserModel>(kUserBox);
  userBox.add(userModel);
  successAwesomeDialog(context, 'أقمرت قهوتنا يا ${userModel.arabicUsername}').show();
  Future.delayed(const Duration(seconds: 4), () => GoRouter.of(context).push('/splashView'));

  return userCredential;
}