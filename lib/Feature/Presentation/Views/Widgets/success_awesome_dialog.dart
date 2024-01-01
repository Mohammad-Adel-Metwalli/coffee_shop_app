import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:coffee_shop_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AwesomeDialog successAwesomeDialog(context, String successMessage)
{
  return AwesomeDialog(
    context: context,
    animType: AnimType.topSlide,
    dialogType: DialogType.success,
    dialogBackgroundColor: babyPowder,
    autoHide: const Duration(seconds: 3),
    dialogBorderRadius: BorderRadius.circular(15),
    width: MediaQuery.sizeOf(context).width * 0.8,
    borderSide: const BorderSide(color: green, width: 3.5),
    body: SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: Center(
        child: Text(successMessage, style: GoogleFonts.lateef(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
      ),
    ),
  );
}