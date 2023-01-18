import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/utils/theme/widgets/app_bar_theme.dart';
import 'package:flutter_login_app/src/utils/theme/widgets/elevated_button_theme.dart';
import 'package:flutter_login_app/src/utils/theme/widgets/outlined_button_theme.dart';
import 'package:flutter_login_app/src/utils/theme/widgets/text_form_field_theme.dart';
import 'package:flutter_login_app/src/utils/theme/widgets/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AppAppBarTheme.appBarTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: AppAppBarTheme.appBarTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
