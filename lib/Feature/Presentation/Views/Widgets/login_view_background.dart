import 'package:flutter/material.dart';

class LoginViewBackground extends StatelessWidget
{
  const LoginViewBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('Assets/Images/image-from-rawpixel-id-12844017-jpeg.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}