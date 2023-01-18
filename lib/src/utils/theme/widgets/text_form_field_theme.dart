import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor: appSecondaryColor,
    suffixIconColor: appSecondaryColor,
    floatingLabelStyle: const TextStyle(color: appSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(width: 2, color: appSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor: appPrimaryColor,
    suffixIconColor: appPrimaryColor,
    floatingLabelStyle: const TextStyle(color: appPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(width: 2, color: appPrimaryColor),
    ),
  );
}