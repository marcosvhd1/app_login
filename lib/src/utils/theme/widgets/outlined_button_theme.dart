import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      foregroundColor: appSecondaryColor,
      side: const BorderSide(color: appSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: appButtonHeight),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      foregroundColor: appWhiteColor,
      side: const BorderSide(color: appWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: appButtonHeight),
    ),
  );
}
