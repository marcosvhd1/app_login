import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_login_app/src/constants/colors.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = GoogleFonts.montserratTextTheme(
    const TextTheme(
      headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: appSecondaryColor),
      headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: appDarkColor),
      headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: appDarkColor),
      headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: appDarkColor),
      headline6: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: appDarkColor),
      bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: appDarkColor),
      bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: appDarkColor),
    ),
  );
  static TextTheme darkTextTheme = GoogleFonts.montserratTextTheme(
    const TextTheme(
      headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: appWhiteColor),
      headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: appWhiteColor),
      headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: appWhiteColor),
      headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: appWhiteColor),
      headline6: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: appWhiteColor),
      bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: appWhiteColor),
      bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: appWhiteColor),
    ),
  );
}
