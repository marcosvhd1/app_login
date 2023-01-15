import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      foregroundColor: appWhiteColor,
      backgroundColor: appSecondaryColor,
      side: const BorderSide(color: appSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: appButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      foregroundColor: appSecondaryColor,
      backgroundColor: appWhiteColor,
      side: const BorderSide(color: appSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: appButtonHeight),
    ),
  );
}
