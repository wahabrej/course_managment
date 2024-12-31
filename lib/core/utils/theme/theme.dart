import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'custom_themes/app_bar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    splashFactory: NoSplash.splashFactory,
      fontFamily: 'HelveticaNeue',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.accent,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: App_BarTheme.lightAppBarTheme,
      inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      splashFactory: NoSplash.splashFactory,
      fontFamily: 'HelveticaNeue',
      brightness: Brightness.dark,
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: App_BarTheme.darkAppBarTheme,
      inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme);
}
