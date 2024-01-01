import 'package:flutter/material.dart';
import 'constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles
{
  static OutlineInputBorder customedOutlineInputBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: brown, width: 3.5));
  static OutlineInputBorder customedOutlineInputErrorBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: const BorderSide(color: Colors.red, width: 3.5));
  static final textFormFieldsStyle = GoogleFonts.lateef(color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold);
  static final inputText = GoogleFonts.poppins(color: brown, fontWeight: FontWeight.bold, fontSize: 15);
  static final userInputText = GoogleFonts.lateef(color: brown, fontWeight: FontWeight.bold, fontSize: 20);
  static final createAccountStyle = GoogleFonts.lateef(color: babyPowder, fontSize: 20, fontWeight: FontWeight.bold);
  static final loginButtonStyle = GoogleFonts.lateef(color: babyPowder, fontSize: 28, fontWeight: FontWeight.bold);
  static const errorStyle = TextStyle(color: babyPowder);
}