import 'package:flutter/material.dart';
import 'package:user_profile/themes/text.dart';

TextTheme createTextTheme() {
  return const TextTheme(
      titleLarge: headlines2Bold,
      titleMedium: titleTextBold,
      titleSmall: tabTextMedium,
      bodyMedium: descriptionTextMedium);
}
