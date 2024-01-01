import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'customed_divider.dart';

class AnotherWayToLogin extends StatelessWidget
{
  const AnotherWayToLogin({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomedDivider(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),

        Text(text, style: GoogleFonts.lateef(color: babyPowder, fontWeight: FontWeight.bold, fontSize: 20)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),

        const CustomedDivider(),
      ],
    );
  }
}