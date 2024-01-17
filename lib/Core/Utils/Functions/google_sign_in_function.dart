import 'package:coffee_shop_app/Core/Utils/Functions/translate_to_arabic_function.dart';
import 'package:coffee_shop_app/Core/Utils/constants.dart';
import 'package:coffee_shop_app/Feature/Data/Models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import '../../../Feature/Presentation/Views/Widgets/success_awesome_dialog.dart';

Future<UserCredential> signInWithGoogle(context) async
{
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  String nameInArabic = await translateToArabic(googleUser!.displayName.toString());
  UserModel userModel = UserModel(googleUser.displayName.toString(), '', googleUser.email.toString(), nameInArabic);
  var userBox = Hive.box<UserModel>(kUserBox);
  userBox.add(userModel);

  successAwesomeDialog(context, 'أقمرت قهوتنا يا ${userModel.arabicUsername}').show();
  Future.delayed(const Duration(seconds: 4), () => GoRouter.of(context).push('/splashView'));

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}