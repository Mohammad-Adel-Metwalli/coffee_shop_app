import 'package:flutter/material.dart';
import 'Widgets/login_view_body.dart';

class LoginView extends StatefulWidget
{
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/image-from-rawpixel-id-12844017-jpeg.jpg'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}