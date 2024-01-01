import 'package:coffee_shop_app/Core/Utils/app_router.dart';
import 'package:coffee_shop_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const QahwatunaApp());
}

class QahwatunaApp extends StatelessWidget
{
  const QahwatunaApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.reemKufiTextTheme()),
    );
  }
}