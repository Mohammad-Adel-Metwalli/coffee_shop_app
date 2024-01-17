import 'package:coffee_shop_app/Core/Utils/app_router.dart';
import 'package:coffee_shop_app/Core/Utils/constants.dart';
import 'package:coffee_shop_app/Feature/Data/Models/user_model.dart';
import 'package:coffee_shop_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>(kUserBox);
  await Hive.openBox(kVisitBox);
  runApp(const QahwatunaApp());
}

class QahwatunaApp extends StatelessWidget
{
  const QahwatunaApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.reemKufiTextTheme()),
      ),
    );
  }
}