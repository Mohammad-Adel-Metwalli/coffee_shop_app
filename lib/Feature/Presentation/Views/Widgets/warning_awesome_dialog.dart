import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Core/Utils/constant_colors.dart';

AwesomeDialog warningAwesomeDialog(context, String warningMessage)
{
  return AwesomeDialog(
    context: context,
    animType: AnimType.topSlide,
    dialogType: DialogType.warning,
    dialogBackgroundColor: babyPowder,
    autoHide: const Duration(seconds: 3),
    dialogBorderRadius: BorderRadius.circular(15),
    width: MediaQuery.sizeOf(context).width * 0.8,
    borderSide: const BorderSide(color: orange, width: 3.5),
    body: SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: Center(
        child: Text(warningMessage, style: GoogleFonts.lateef(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
      ),
    ),
  );
}