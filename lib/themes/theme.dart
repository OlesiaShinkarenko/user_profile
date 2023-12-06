import 'package:flutter/material.dart';
import 'package:user_profile/themes/color.dart';
import 'package:user_profile/themes/text_theme.dart';

ThemeData createTheme() {
  return ThemeData(
      textTheme: createTextTheme(),
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.GrayBackgroundColor,
      appBarTheme:
          const AppBarTheme(backgroundColor: AppColors.BackgroundColor),
      dividerColor: AppColors.DividerColor,
      indicatorColor: AppColors.PrimaryColor,
      primaryColor: AppColors.GrayBackgroundColor,
      hintColor: AppColors.GrayTextColor,
      backgroundColor: AppColors.GrayBackgroundColor,
      chipTheme: const ChipThemeData(backgroundColor: AppColors.GrayBackgroundColor));
}
